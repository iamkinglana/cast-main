Rails.application.routes.draw do
  resources :users
  resources :casts
  resources :comments
  resources :likes
  resources :follows
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
end
