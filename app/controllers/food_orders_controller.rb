class FoodOrdersController < ApplicationController

    def create 
        @food_order = FoodOrder.create(food_receiver_id: params[:food_receiver_id], note: params[:note], amount: params[:amount], food_listing_id: params[:food_listing_id])

        if @food_order
            food_listing = FoodListing.find(params[:food_listing_id])
            updated_listing = food_listing.decrement!(:amount)
        
            render json: updated_listing 
       else
           render json: {errors: ["You already ordered this"]}, status: :unauthorized
       end
        
        
    end

end
