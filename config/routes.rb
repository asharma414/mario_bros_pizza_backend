Rails.application.routes.draw do
  resources :ingredients, only: [:index]
  resources :pizzas, only: [:create, :index]
  resources :customers, only: [:create, :update, :show]
  post '/login', to: 'customers#login'
  resources :orders, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
