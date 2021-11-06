Rails.application.routes.draw do
  get "welcome/index"
  root to: "welcome#index"

  resources :spots, only: [:show, :index]
end