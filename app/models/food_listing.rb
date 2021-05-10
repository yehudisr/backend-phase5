class FoodListing < ApplicationRecord
  belongs_to :food_giver
  has_many :food_orders, dependent: :destroy


  # def self.todays_listings
   
  # self.find(:all, :conditions=>[“DATE(created_at) = ?”, Date.today])
  # end

  # @users = User.where(created_at: from_date.beginning_of_day..to_date.end_of_day)

  # @food_listings = FoodListing.where("created_at between (?) and (?)", start_time, end_time)

  # def todays_listings
  #   # FoodListing.all.select{|listing| listing.created_at == Time.now}
  #   @today = FoodListing.where('start BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all

  # end
  
  def total_amount 
     food_orders.count + amount 
  end
  
  # def self.all_listings_count
    
  #  FoodListing.all.sum{|listing| listing.total_amount}
  # end


end
