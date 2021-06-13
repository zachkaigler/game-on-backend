Rails.application.routes.draw do
  post "/login", to: "users#login"
  get "/keep_logged_in", to: "users#keep_logged_in"
  post "/search", to: "users#search"

  resources :messages
  resources :conversations
  resources :requests
  resources :memberships
  resources :groups
  resources :interests
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
