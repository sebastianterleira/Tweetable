Rails.application.routes.draw do
  root "tweets#index"
  devise_for :users, controllers: { omniauth_callbacks: :callbacks }

  resources :likes, only: %i[create]
  resources :tweets
  resources :users

  # customs routes
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  get "/profile", to: "users#edit"
  patch "/profile", to: "users#update"
  post "/profile", to: "users#create"
  get "/profile", to: "users#show"

    # Omniauth
    # get "/auth/github/callback", to: "sessions#create"
end
