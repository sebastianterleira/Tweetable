Rails.application.routes.draw do
  devise_for :users
  root "tweets#index"

  resources :likes, only: %i[create]
  resources :tweets
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
