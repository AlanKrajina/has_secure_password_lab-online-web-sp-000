Rails.application.routes.draw do
  root 'application#hello'

  get    '/login',   to: 'sessions#new'
  get    '/show',   to: 'secrets#show'
  post   '/login',   to: 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
