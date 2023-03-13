Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :suppliers
  resources :users
  resources :sessions

  # get "/products" => "products#index"

  # get "/products/:id" => "products#show"

  # post "/products" => "products#create"

  # patch "/products/:id" => "products#update"

  # delete "/products/:id" => "products#destroy"

  # get "/suppliers" => "suppliers#index"

  # post "/users" => "users#create"

  # post "/sessions" => "sessions#create"

  # post "/orders" => "orders#create"

  # get "/orders" => "orders"
end
