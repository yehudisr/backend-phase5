class FoodGiver < ApplicationRecord
    has_many :food_listings, dependent: :destroy


    def all_listings_count
       food_listings.all.sum(&:total_amount)
    end
end
