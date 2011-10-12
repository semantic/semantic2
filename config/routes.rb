Semantic2::Application.routes.draw do

  # Session routes
  match "/auth/:provider/callback" => "sessions#create"
  match "/desconnectar" => "sessions#destroy", :as => :signout

end

