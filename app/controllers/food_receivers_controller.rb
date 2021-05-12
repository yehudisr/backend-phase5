class FoodReceiversController < ApplicationController

    def index 
        @food_receivers = FoodReceiver.all 
        render json: @food_receivers
    end

    def show
        @food_receiver = FoodReceiver.find(params[:id])
        render json: @food_receiver
    end

    def order 
        @food_receiver = FoodReceiver.find_by(email: params[:email])
        if @food_receiver &&  @food_receiver.password_digest === params[:password]
            render json: @food_receiver
        else
            render json: {errors: ["Invalid username or password"]}, status: :unauthorized
        end 
    end

    def create 
        @food_receiver = FoodReceiver.create(name: params[:name], email: params[:email], password_digest: params[:password], location: params[:location])
        render json: @food_receiver 
    end
end
