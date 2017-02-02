Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [:index, :show]
  get "transfers", to: 'pages#transfers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders, only: [:show, :create]do
    resources :payments, only: [:new, :create]
  end
end
