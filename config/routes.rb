Rails.application.routes.draw do
  resources :movies
  resources :friendships
  resources :users

  post '/login', to: 'users#login'
  
end
