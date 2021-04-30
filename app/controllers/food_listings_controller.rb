class FoodListingsController < ApplicationController

    def index 
        @food_listings = FoodListing.all 
        render json: @food_listings
    end
end
