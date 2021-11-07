Rails.application.routes.draw do
  get 'sessions/create'
  get "welcome/index"
  root to: "welcome#index"
  resources :spots, only: [:show, :index]

  get '/auth/slack/callback', to: 'sessions#create'
end