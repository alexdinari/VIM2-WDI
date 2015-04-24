Rails.application.routes.draw do
  root 'pages#home'

  get '/users/:id' => 'user#show'
  get '/users' => 'users#index'
  get '/pages' => 'pages#about'
  get '/pages' => 'pages#contact'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


 
end
