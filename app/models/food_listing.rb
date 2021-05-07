class FoodListing < ApplicationRecord
  belongs_to :food_giver
  has_many :food_orders, dependent: :destroy


  # def self.todays_listings
   
  # self.find(:all, :conditions=>[“DATE(created_at) = ?”, Date.today])
  # end

  # @users = User.where(created_at: from_date.beginning_of_day..to_date.end_of_day)

  # @food_listings = FoodListing.where("created_at between (?) and (?)", start_time, end_time)

end
