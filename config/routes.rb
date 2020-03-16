Rails.application.routes.draw do
  get 'creditcardas/new'
  get 'creditcardas/show'
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
    end
    resources :users, only: [:show] do
      resources :profile, only: :index
      resources :creditcards, only: :index
      resources :location, only: :index
    end
end