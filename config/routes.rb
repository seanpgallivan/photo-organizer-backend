Rails.application.routes.draw do
  resources :albums
  resources :photos
  resources :users
  resources :albums_photos
end
