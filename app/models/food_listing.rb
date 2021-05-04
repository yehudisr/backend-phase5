class FoodListing < ApplicationRecord
  belongs_to :food_giver
  has_many :food_orders, dependent: :destroy


  # def amount_updated 
  #   food
  # end

end
