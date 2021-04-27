Rails.application.routes.draw do
  resources :food_orders
  resources :food_receivers
  resources :food_listings
  resources :food_givers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
