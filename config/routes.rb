Rails.application.routes.draw do
  get 'main/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'application#hello'

  # resources :main

  root 'main#index'
end
