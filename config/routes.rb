Rails.application.routes.draw do
  devise_for :users
  root "tweets#index"

  resources :likes, only: %i[create]
  resources :tweets
  resources :users

  #customs routes
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  get "/profile", to: "users#edit"
  patch "/profile", to: "users#update"
  post "/profile", to: "users#create"
  get "/profile", to: "users#show"

end
