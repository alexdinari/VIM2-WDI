Rails.application.routes.draw do
  root 'pages#home'

  get '/users/:id' => 'users#trainerprofile', as: :trainer
  # get '/users/:id' => 'users#show'
  get '/users' => 'users#index'
  get '/pages' => 'pages#about'
  get '/contact' => 'pages#contact'
  get '/betrainer' => 'pages#betrainer'
  post '/users' => 'users#create'
  post '/betrainer' => 'pages#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
