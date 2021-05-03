class FoodReceiver < ApplicationRecord
    has_many :food_orders, dependent: :destroy
end
