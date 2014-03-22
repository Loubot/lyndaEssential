MusicLibrary::Application.routes.draw do
  resources :users


  resources :artists


  resources :albums


  root :to => 'albums#index'
end
