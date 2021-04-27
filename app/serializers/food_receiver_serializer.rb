class FoodReceiverSerializer
  include JSONAPI::Serializer
  attributes :name, :location, :email

  has_many :food_orders
end
