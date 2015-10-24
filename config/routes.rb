Rails.application.routes.draw do
  resources :news
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
