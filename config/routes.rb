Rails.application.routes.draw do
  resources :stocksproducts
  resources :rifleproducts
  resources :barrelproducts
  resources :opticsproducts
  resources :photos
  resources :static_pages
  resources :webpages
  resources :preloveds
  resources :reloadings
  resources :miscellaneous
  resources :triggers
  resources :archeries
  resources :stocks
  resources :optics
  resources :barrels

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
