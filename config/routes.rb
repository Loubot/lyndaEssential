MusicLibrary::Application.routes.draw do
  get "admin/menu"

  resources :admin  

  resources :users


  resources :artists


  resources :albums


  root :to => 'albums#index'
end
