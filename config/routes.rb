Rails.application.routes.draw do
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
