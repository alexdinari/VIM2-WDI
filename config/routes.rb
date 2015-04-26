Rails.application.routes.draw do
  root 'pages#home'

  get '/users' => 'users#index'
  get '/pages' => 'pages#about'
  get '/contact' => 'pages#contact'
  get '/betrainer' => 'pages#betrainer'
  post '/users' => 'users#create'
  post '/betrainer' => 'pages#create'
  get '/users/:id/edit' => 'users#edit', as: :edit
  get '/users/:id' => 'users#show', as: :trainer
  patch 'users/id' => 'users#update'
  delete "users/:id" => "users#destroy", as: :destroy

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/signup' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  
  

end
