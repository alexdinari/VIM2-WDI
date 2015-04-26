Rails.application.routes.draw do
  root 'pages#home'

  # get '/users/:id' => 'users#show'
  get '/users' => 'users#index'
  get '/pages' => 'pages#about'
  get '/contact' => 'pages#contact'
  get '/betrainer' => 'pages#betrainer'
  post '/users' => 'users#create'
  post '/betrainer' => 'pages#create'
  get '/users/:id/edit' => 'users#trainerprof', as: :profile
  # post 'users/id' => 'users#trainerprof'
  patch 'users/id' => 'users#update'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/signup' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/users/:id' => 'users#show', as: :trainer

end
