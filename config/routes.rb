Rails.application.routes.draw do
  #sessions create
  post "/sessions" => "sessions#create"

  #users create(signup)
  post "/users" => "users#create"
  #Users show
  get "/users/:id" => "users#show"
  #users update
  patch "/users/:id" => "users#update"

end
