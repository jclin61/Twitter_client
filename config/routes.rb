TwitterJclin::Application.routes.draw do
  get "tweets/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'tweets#index'

  #get to twitter authorization and callback
  get 'auth/twitter/callback', to: 'sessions#create'
  
end


