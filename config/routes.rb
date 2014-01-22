TwitterJclin::Application.routes.draw do
  get "tweets/index"
  get "tweets/user_tweet"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'sessions#show'

  #get to twitter authorization and callback
  get 'auth/twitter/callback', to: 'sessions#create'

  get '/profile', to: 'sessions#show', as: 'show'
  
  get '/destroy', to: 'sessions#destroy', as: 'signout'

  get '/update', to: 'sessions#update', as: 'update'
  
end


