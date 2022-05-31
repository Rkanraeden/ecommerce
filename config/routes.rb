Rails.application.routes.draw do
  devise_for :admins
  get 'home/index'
  resources :products
  resources :categories
  root to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
