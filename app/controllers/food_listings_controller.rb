class FoodListingsController < ApplicationController

    def index 
        @food_listings = FoodListings.all 
        render json: @food_listings
    end
end
