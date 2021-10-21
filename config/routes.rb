Rails.application.routes.draw do
  #users create
  post "/users" => "users#create"

  #sessions create
  post "/sessions" => "sessions#create"

end
