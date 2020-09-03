Rails.application.routes.draw do
  resources :messages
  resources :chats
  resources :user_list_movies
  resources :movie_list_movies
  resources :list_movies
  resources :movies
  resources :friendships
  resources :users

  post '/login', to: 'users#login'
  
end
