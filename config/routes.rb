Rails.application.routes.draw do
  devise_for :users
  resources :connections
  root 'home#index'
  get 'home/about'
end
