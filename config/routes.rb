Rails.application.routes.draw do
  resources :connections
  root 'home#index'
  get 'home/about'
end
