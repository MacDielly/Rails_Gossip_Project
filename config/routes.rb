Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "gossips#index"
  resources :gossips do
    resources :comments
  end
  resources :sessions, only: [:new, :create, :destroy]
  # get "/gossips", to: "gossips#index"
  # get "/gossips/:id", to: "gossips#show"
end
