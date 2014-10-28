BoardTestV1O::Application.routes.draw do
  resources :groups
  resources :users

  root 'groups#index'


end
