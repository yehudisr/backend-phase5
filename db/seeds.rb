# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FoodOrder.destroy_all
FoodListing.destroy_all
FoodReceiver.destroy_all
FoodGiver.destroy_all


#FOODGIVERS


# categories = ["bakery", "restaurant", "event caterer", "deli", "cafe"]
# FoodGiver.create(name:"Patis", location:"", category: category.sample, email:"example@example.com", password_digest: )

def create_food_giver
    
    name = Faker::Restaurant.name
    location = Faker::Address.street_address
    category = ["bakery", "restaurant", "event caterer", "deli", "cafe"].sample
    email = Faker::Internet.email
    password_digest = "abc123"
    FoodGiver.create(name: name, location: location, category: category, email: email, password_digest: password_digest)
end

#FOODRECEIVERS

def create_food_receiver
    name = Faker::Name.name_with_middle
    location = Faker::Address.street_address
    email = Faker::Internet.email
    password_digest = "abc123"
    FoodReceiver.create(name: name, location: location, email: email, password_digest: password_digest)
end

5.times do
    create_food_giver
    create_food_receiver
end

#FOODLISTINGS

FoodListing.create(name:"tacos", description:"tacos with all the fixings", amount:1, start_time: Time.now.to_datetime, end_time:Time.now.to_datetime.end_of_day, food_giver_id: 1)
FoodListing.create(name:"chicken and rice", description:"Chicken with rice and vegetables" , amount:1 , start_time: Time.now.to_datetime, end_time:Time.now.to_datetime.end_of_day, food_giver_id: 1)
FoodListing.create(name:"spaghetti and meatballs" , description:"spaghetti and meatballs with sauce" , amount:1, start_time: Time.now.to_datetime, end_time:Time.now.to_datetime.end_of_day, food_giver_id: 2)
FoodListing.create(name:"stir fry", description:"stir fry with noodles and beef", amount:1, start_time: Time.now.to_datetime, end_time:Time.now.to_datetime.end_of_day, food_giver_id: 3)


#FOODORDERS

FoodOrder.create(amount: 1, note:"will come at 8pm", food_receiver_id: 1, food_listing_id: 1)
FoodOrder.create(amount: 1, note:"thank you", food_receiver_id: 2, food_listing_id: 4)
FoodOrder.create(amount: 1, note:"please leave outside for pickup", food_receiver_id: 2, food_listing_id: 3)
FoodOrder.create(amount: 1, note:"thanks", food_receiver_id: 3, food_listing_id: 2)




puts "SEEDED"