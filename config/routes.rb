Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/auth/instagram/callback', to: 'sessions#create'
  get '/dashboard', to: 'dashboard#show'
  get '/logout', to: 'sessions#destroy'
end
