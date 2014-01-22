SignInWithTwitter::Application.routes.draw do
  root to: 'welcome#index'
  get '/auth/twitter/callback', to: 'sessions#create', as: 'callback'
  get '/auth/failure', to: 'sessions#error', as: 'failure'
  get '/profile', to: 'sessions#show', as: 'show'
  get '/signout', to: 'sessions#destroy', as: 'signout'
  get '/update', to: 'sessions#update', as: 'update'
end
