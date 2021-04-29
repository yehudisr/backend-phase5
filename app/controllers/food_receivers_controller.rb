class FoodReceiversController < ApplicationController

    def index 
        @food_receivers = FoodReceiver.all 
        render json: @food_receivers
    end

    def show
        @food_receiver = FoodReceiver.find(params[:id])
        render json: @food_receiver
    end
end
