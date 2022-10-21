Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/restaurants", to: "restaurants#index"
  get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  post"/restaurants", to: "restaurants#create"
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  resources :restaurants do
    resources :reviews, only: [:new, :index, :create]
  end

end
