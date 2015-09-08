Rails.application.routes.draw do
  root 'dashboard#index'
  get '/auth/instagram/callback', to: 'sessions#create'
  get '/dashboard', to: 'dashboard#show'
end
