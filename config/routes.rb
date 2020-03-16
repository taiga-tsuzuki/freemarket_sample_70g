Rails.application.routes.draw do

  get 'purchases/index'
  get 'purchases/done'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'locations', to: 'users/registrations#new_location'
    post 'locations', to: 'users/registrations#create_location'
  end

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
  resources :creditcards, only: [:new, :show] do
    collection do
      post 'show', to: 'creditcards#show'
      post 'pay', to: 'creditcards#pay'
      post 'delete', to: 'creditcards#delete'
    end
  end
end
