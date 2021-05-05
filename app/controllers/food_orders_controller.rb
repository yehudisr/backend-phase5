class FoodOrdersController < ApplicationController

    def create 
        @food_order = FoodOrder.create(food_receiver_id: params[:food_receiver_id], note: params[:note], amount: params[:amount], food_listing_id: params[:food_listing_id])
        food_listing = FoodListing.find(params[:food_listing_id])
        updated_listing = food_listing.decrement(:amount).update({amount: new_amount.amount})
        render json: updated_listing
    end

end
