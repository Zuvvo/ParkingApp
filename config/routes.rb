Rails.application.routes.draw do
  root 'pages#home'
  resources :spots, only: [:show, :index]
end
