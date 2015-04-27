Rails.application.routes.draw do
  root 'pages#home'

  # Routes for sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/signup' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # Routes for users
  resources :users

  # Routes for static pages
  get '/pages' => 'pages#about'
  get '/contact' => 'pages#contact'
  get '/betrainer' => 'pages#betrainer'
  post '/betrainer' => 'pages#create'
  
end