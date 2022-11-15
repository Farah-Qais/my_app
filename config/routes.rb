Rails.application.routes.draw do
  resources :chapter2s
  resources :devices
  resources :chapter1s
  resources :book3s
  resources :chapters
  resources :book4s
  devise_for :admins
  resources :admins
  resources :hoses
  resources :books
  resources :profiles
  resources :users
  root to: "users#index"
  resources :book2s,only:[:index]
  resources :car4s,only:[:index]
  resources :devices,only:[:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

