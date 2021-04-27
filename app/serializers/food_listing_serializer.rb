class FoodListingSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :amount, :start_time, :end_time

  belongs_to :food_giver
end
