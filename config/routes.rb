Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  get 'home/index'
  root to: "home#index"
  authenticate :admin do
    resources :products
    resources :categories
  end

  resource :cart, only: [:show, :update]
end


# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"