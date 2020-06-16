Rails.application.routes.draw do
  resources :ingredients, only: [:index]
  resources :pizzas, only: [:create, :index]
  resources :customers, only: [:create, :update, :show]
  resources :orders, only: [:create]
  
  post '/login', to: 'customers#login'
  get '/ingredients/prices', to: 'ingredients#prices'
  post '/orders/:id', to: 'orders#checkout'
  get '/orders/:id', to: 'orders#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
