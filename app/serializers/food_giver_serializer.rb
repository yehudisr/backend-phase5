class FoodGiverSerializer
  include JSONAPI::Serializer
  attributes :name, :location, :category, :email
  has_many :food_listings
end
