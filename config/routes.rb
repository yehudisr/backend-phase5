Rails.application.routes.draw do
  resources :food_receivers
  resources :food_orders
  resources :food_listings
  resources :food_givers

  post '/login', to: 'food_givers#login'
  get '/food_givers/:id', to: 'food_givers#show'

  post '/food_listings', to: 'food_listings#create'
  delete '/food_listings/:id', to: 'food_listings#destroy'

  post '/order', to: 'food_receivers#order'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
