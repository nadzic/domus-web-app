Rails.application.routes.draw do
  get 'measurments/index'
  get 'measurments/new'
  get 'measurments/create'
  get 'measurments/destroy'
  root 'sessions#new'
  get 'sessions/new'
  get 'analysis/index'
  get 'coach/index'
  get 'instructions/index'
  get 'overview/index'
  get 'static_pages/panel'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :drivers
  resources :measurments, only: [:index, :new, :create, :destroy]
end
