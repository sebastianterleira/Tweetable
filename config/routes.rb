Rails.application.routes.draw do
  devise_for :users
  root "tweets#index"

  resources :likes, only: %i[create]
  resources :tweets
  resources :users


  get "/profile", to: "users#show"
end
