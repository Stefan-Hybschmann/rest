Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :restaurants

  # resources :restaurants, only: [:index, :create, :new, :show, :edit, :update, :destroy]

  get "restaurants", to: "restaurants#index"

  post "restaurants", to: "restaurants#create"
  get "restaurants/new", to: "restaurants#new"

  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  get "restaurants/:id/edit", to: "restaurants#edit"
  patch "restaurants/:id", to: "restaurants#update"

  delete "restaurants/:id", to: "restaurants#destroy"
end
