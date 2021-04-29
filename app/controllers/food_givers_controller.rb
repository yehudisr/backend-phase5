class FoodGiversController < ApplicationController

    def index 
        @food_givers = FoodGiver.all 
        render json: @food_givers
    end

    def show 
        @food_giver = FoodGiver.find(params[:id])
        render json: @food_giver 
    end

end
