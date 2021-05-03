class FoodGiver < ApplicationRecord
    has_many :food_listings, dependent: :destroy
end
