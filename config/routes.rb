Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :restaurants do
  # resources :reviews, only: [:new]
  # end
  # Defines the root path route ("/")
  # root "articles#index"
  # get "restaurants", to: "restaurants#index" # see all
  # get "restaurants/new", to: "restaurants#new" # user creates a new restaurant
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show" # see one

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
