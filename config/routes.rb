MusicLibrary::Application.routes.draw do
  resources :admins


  resources :admin  

  resources :users


  resources :artists


  resources :albums


  root :to => 'albums#index'
end
