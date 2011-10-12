$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
require 'bundler/capistrano'

set :rvm_ruby_string, 'default'        # Or whatever env you want it to run in.

set :application, "semantic"
set :repository,  "git://github.com/semantic/semantic2.git"

set :scm, :git

role :web, "braavos.itnig.net"                          # Your HTTP server, Apache/etc
role :app, "braavos.itnig.net"                          # This may be the same as your `Web` server
role :db,  "braavos.itnig.net", :primary => true # This is where Rails migrations will run

set :branch, "master"
set :keep_releases, 5
set :deploy_to, "/var/www/rails/semantic.cat"
set :deploy_via, :remote_cache

set :user, "deployer"
set :ssh_options, {:forward_agent => true, :port => 8622}
on :start do
  `ssh-add`
end
set :use_sudo, false

set :bundle_without, [:development, :test, :mac]


namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

namespace :symlinks do
  desc "Make symlinks"
  task :make, :roles => :app, :except => { :no_release => true } do
    commands = ["config/database.yml"].map do |path|
      "rm -rf #{release_path}/#{path} && ln -s #{shared_path}/#{path} #{release_path}/#{path}"
    end

    run <<-CMD
      cd #{release_path} && #{commands.join(" && ")}
    CMD
  end
end

after "deploy:update_code", "deploy:cleanup"
after "deploy:update_code", 'symlinks:make'
