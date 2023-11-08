Rails.application.routes.draw do
  devise_for :users
  resources :patients
  root to: "pages#home"
  get "search_results", to: "patients#search_results"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
