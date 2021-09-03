Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users
  resources :attractions

  root 'session#home'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session/', to: 'session#destroy'
  post '/rides', to: 'ride#create', as: 'rides'

end
