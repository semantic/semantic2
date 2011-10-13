Semantic2::Application.routes.draw do

  resources :episodes, :path => 'episodis'

  # Session routes
  match "/auth/:provider/callback" => "sessions#create"
  match "/desconnectar" => "sessions#destroy", :as => :signout

end

