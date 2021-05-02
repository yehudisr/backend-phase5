Rails.application.routes.draw do
  resources :food_receivers
  resources :food_orders
  resources :food_listings
  resources :food_givers

  post '/login', to: 'food_givers#login'
  get '/food_givers/:id', to: 'food_givers#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
