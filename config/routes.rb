Rails.application.routes.draw do
  root 'application#hello'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  get    '/show',   to: 'users#show'
  post   '/login',   to: 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
