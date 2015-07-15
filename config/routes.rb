Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :home, only: [:index]
  resources :items
  resources :purchases
  resources :users, only: [:show, :index]



end
