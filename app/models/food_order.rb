class FoodOrder < ApplicationRecord
  belongs_to :food_receiver
  belongs_to :food_listing

  # validates :food_receiver, uniqueness: {scope: :food_listing_id}
end
