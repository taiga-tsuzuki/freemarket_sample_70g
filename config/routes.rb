Rails.application.routes.draw do
  devise_for :users
    root "items#index"
    resources :items do
      resources :comments, only: :create
      resources :images, olny: [:index,:create]
    end
    resources :users, only: [:show] do
      resources :profile, only: :index
      resources :creditcards, only: :index
      resources :location, only: :index
    end
    resources :brand, only: :index
    resources :category, only: :index
end
