MusicLibrary::Application.routes.draw do
  get "public/list"

  get "public/add_to_cart"

  get 'public/show_cart'

  get 'public/empty_cart'

  get 'public/remove_item'

  get 'public/checkout'

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
