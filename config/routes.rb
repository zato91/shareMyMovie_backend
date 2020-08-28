Rails.application.routes.draw do
  resources :friendships
  resources :users

  post '/login', to: 'users#login'
  
end
