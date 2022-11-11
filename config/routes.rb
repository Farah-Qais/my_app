Rails.application.routes.draw do
  devise_for :admins
  resources :admins
  resources :hoses
  resources :books
  resources :profiles
  resources :users
  root to: "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
