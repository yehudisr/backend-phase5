class FoodGiverSerializer < ActiveModel::Serializer
  attributes :name, :location, :category, :email, :id
  has_many :food_listings
end
