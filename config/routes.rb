MusicLibrary::Application.routes.draw do
  get "public/list"

  get "admin/menu"

  resources :admin  

  resources :users

  resources :artists

  resources :albums

  resources :features

  resources :customers

  resources :orders


  root :to => 'albums#index'
end
