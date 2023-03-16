Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :suppliers
  resources :users
  resources :sessions
end
