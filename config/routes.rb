Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  resources :recipe_foods
  resources :foods
  resources :users
  get "/general_shopping_list", to: "recipes#generate_shopping", as: :generate_shopping
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "recipes#index"
end
