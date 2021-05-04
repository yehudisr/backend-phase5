class FoodReceiverSerializer < ActiveModel::Serializer

  attributes :name, :location, :email

  has_many :food_orders
  # has_many :listings
end
