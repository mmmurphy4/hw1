Rails.application.routes.draw do
  #get '/about', to: 'CONTROLLER#FUNCTION'
  #get '/user/new', to: 'CONTROLLER#FUNCTION', as: 'users'
  root 'users#index'
  get '/about',to:'static_pages#about'
  get '/user/new', to: 'users#new', as: 'users'
  delete '/user/:id', to: 'user#destroy'

  #Edit above this line
  get '/user/:id', to: 'users#show', as: 'user'
  post '/user/new', to: 'users#create'
end
