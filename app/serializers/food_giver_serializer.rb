class FoodGiverSerializer < ActiveModel::Serializer
  attributes :name, :location, :category, :email
  has_many :food_listings
end
