class FoodOrdersController < ApplicationController

    def create 
        @food_order  = FoodOrder.create(food_receiver_id: params[:food_receiver_id], note: params[:note], amount: params[:amount], food_listing_id: params[:food_listing_id])
        render json: @food_order
    end

end
