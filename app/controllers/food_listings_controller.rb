class FoodListingsController < ApplicationController

    def index 
        @food_listings = FoodListing.all 
        render json: @food_listings
    end

    def create 
        @food_listing  = FoodListing.create(food_giver_id: params[:food_giver_id], name: params[:name], description: params[:description], amount: params[:amount], start_time: params[:start_time], end_time: params[:end_time])
        render json: @food_listing 
    end


    def destroy 
        food_listing = FoodListing.find(params[:id])
        food_listing.destroy
        render json: food_listing
    end
end
