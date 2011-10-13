Semantic2::Application.routes.draw do

  resources :episodes

  # Session routes
  match "/auth/:provider/callback" => "sessions#create"
  match "/desconnectar" => "sessions#destroy", :as => :signout

end

