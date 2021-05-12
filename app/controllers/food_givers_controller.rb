class FoodGiversController < ApplicationController

    def index 
        @food_givers = FoodGiver.all 
        render json: @food_givers
    end

    def show 
        @food_giver = FoodGiver.find(params[:id])
        render json: @food_giver 
    end

    def login 
        @food_giver = FoodGiver.find_by(email: params[:email])
        if @food_giver &&  @food_giver.password_digest === params[:password]
            render json: @food_giver
        else
            render json: {errors: ["Invalid username or password"]}, status: :unauthorized
        end 
    end

    def create 
        @food_giver = FoodGiver.create(name: params[:name], email: params[:email], password_digest: params[:password], location: params[:location], category: params[:category])
        render json: @food_giver 
    end
    


end
