Rails.application.routes.draw do
  resources :rifles
  resources :rifles
  resources :rifles
  resources :dues
  resources :rifles
  resources :when_dues
  resources :makes
  resources :posts
  resources :news
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
