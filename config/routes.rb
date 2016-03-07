Rails.application.routes.draw do
  resources :preloveds
  resources :reloadings
  resources :miscellaneous
  resources :triggers
  resources :archeries
  resources :stocks
  resources :optics
  resources :barrels
  resources :rifleproducts

  resources :riflesv
  #get 'riflesv', to: riflesv#index
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
