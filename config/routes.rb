BoardTestV1O::Application.routes.draw do
  resources :groups

  root 'groups#index'
end
