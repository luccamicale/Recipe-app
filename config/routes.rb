Rails.application.routes.draw do
  resources :recipes, only: [:index] do
  end
  resources :recipe_foods
  resources :foods
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"
end
