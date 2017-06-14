Rails.application.routes.draw do

  root 'sessions#new'

  post 'sessions/destroy', to: 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]

  get 'secrets/show'

end
