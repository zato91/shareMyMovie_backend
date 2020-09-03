Rails.application.routes.draw do
  resources :list_movies
  resources :movies
  resources :friendships
  resources :users

  post '/login', to: 'users#login'
  
end
