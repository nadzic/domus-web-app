Rails.application.routes.draw do
  get 'analysis/index'
  get 'coach/index'
  get 'instructions/index'
  get 'overview/index'
  get 'static_pages/panel'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'application#hello'

  # resources :main

  root 'static_pages#panel'
end
