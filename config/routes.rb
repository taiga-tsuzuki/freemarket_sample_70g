Rails.application.routes.draw do
  devise_for :users
    root "items#index"
    resources :items do
      collection do
        get :confirm
        get :done
        get :category_children
        get :category_grandchildren

      end
      resources :comments, only: :create
      resources :images, only: [:index,:create]
      resources :categories
      resources :brands
      
    end
    resources :users, only: [:show] do
      resources :profile, only: :index
      resources :creditcards, only: :index
      resources :location, only: :index
    end
    resources :brand, only: :index
    resources :category, only: :index
end