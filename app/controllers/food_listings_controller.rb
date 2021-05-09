class FoodListingsController < ApplicationController

    def index 
        
        @today = FoodListing.where('start_time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
        # @food_listings = FoodListing.today?
        # order("created_at DESC")
        render json: @today
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
