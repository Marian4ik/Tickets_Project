Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
  get "create_worker", to: "worker#new"
  post "create_worker", to:  "worker#create"
  get 'worker', to: 'worker#index'
end