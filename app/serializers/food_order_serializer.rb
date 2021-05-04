class FoodOrderSerializer < ActiveModel::Serializer
  attributes :amount, :note, :food_listing

  belongs_to :food_receiver
  # belongs_to :food_listing
end
 