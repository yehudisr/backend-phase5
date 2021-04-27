class FoodOrder < ApplicationRecord
  belongs_to :food_receiver
  belongs_to :food_listing
end
