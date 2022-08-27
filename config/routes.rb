Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :worker  

  # get "create_worker", to: "worker#new"
  # post "create_worker", to:  "worker#create"
  # get 'worker', to: 'worker#index'

  resources :ticket  
  #get "create_ticket", to: "ticket#new"
  #post "create_ticket", to:  "ticket#create"
  #get 'ticket', to: 'ticket#index'
  #get "edit_ticket", to: "ticket#edit"
  #post "edit_ticket", to: "ticket#"
end