Rails.application.routes.draw do
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
end
