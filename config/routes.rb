Rails.application.routes.draw do
  resources :favorites
  resources :messages, only: [:index, :create]
  resources :users, only: [:index, :create, :show]
  resources :rooms, only: [:index, :show]

   post "/login", to: "user#login"
   get "/auto_login", to: "users#auto_login"
   get "/user_is_authed", to: "user#user_is_authed"

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
