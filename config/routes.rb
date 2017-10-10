Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
  get '/auth/twitter', as: :twitter_login #this takes care of sending the client id and secret to Twitter
  delete '/logout', to: "sessions#destroy"
  get '/auth/twitter/callback', to: "sessions#create"
end
