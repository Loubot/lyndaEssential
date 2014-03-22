MusicLibrary::Application.routes.draw do
  resources :admins


  get "admin/menu"

  resources :users


  resources :artists


  resources :albums


  root :to => 'albums#index'
end
