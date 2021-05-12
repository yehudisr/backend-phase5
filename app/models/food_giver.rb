
class FoodGiver < ApplicationRecord
    has_many :food_listings, dependent: :destroy


    def all_listings_count
       food_listings.all.sum(&:total_amount)
    end

    # def address_long_and_lat
     
    #     geo = Geokit::Geocoders::MultiGeocoder.geocode(location)
    #     geo.ll
    # end

    def self.total_givers
        FoodGiver.all.count
    end

end
