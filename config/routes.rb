BoardTestV1O::Application.routes.draw do
  resources :groups
  resources :users
  # resources :sessions

  root 'groups#index'
  get   'login' => 'sessions#new'
  post  'create_login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'


end
