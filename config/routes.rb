Rails.application.routes.draw do
  resources :bookmarks
  resources :kinds
  resources :categories
  
  root 'bookmarks#index'
end
