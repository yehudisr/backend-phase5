class FoodGiverSerializer < ActiveModel::Serializer
  attributes :name, :location, :category, :email, :id, :all_listings_count
  has_many :food_listings
end
