class FoodOrderSerializer
  include JSONAPI::Serializer
  attributes :amount, :note

  belongs_to :food_receiver
  belongs_to :food_listing
end
