Semantic2::Application.routes.draw do

  root :to => "episodes#index"

  match "/episodis" => redirect('/')
  resources :episodes, :path => 'episodis'

  # Session routes
  match "/auth/:provider/callback" => "sessions#create"
  match "/desconnectar" => "sessions#destroy", :as => :signout

end

