Rails.application.routes.draw do
  #sessions create
  post "/sessions" => "sessions#create"

  #users create(signup)
  post "/users" => "users#create"
  #Users show
  get "/users/me" => "users#show"
  #users update
  patch "/users/me" => "users#update"
  #users destroy
  delete "/users/me" => "users#destroy"

  #posts index
  get "/posts" => "posts#index"
  #posts create
  post "/posts" => "posts#create"
  #post show
  get "/posts/:id" => "posts#show"
  #post update
  patch "/posts/:id" => "posts#update"

  #comment create
  post "/comments" => "comments#create"
  #comment show
  get "/comments/:id" => "comments#show"
  #comment update
  patch "/comments/:id" => "comments#update"
  #comment destroy
  delete "/comments/:id" => "comments#destroy"

  #boards index
  get "/boards" => "boards#index"
  #boards create
  post "/boards" => "boards#create"
  #boards show
  get "/boards/:id" => "boards#show"
  #boards update
  patch "/boards/:id" => "boards#update"
  #boards destroy
  delete "/boards/:id" => "boards#destroy"

  #post_boards create
  post "/post_boards" => "post_boards#create"
  #post_boards destroy
  delete "/post_boards/:id" => "post_boards#destroy"
end
