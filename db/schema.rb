# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_09_180044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_givers", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "category"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_listings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "amount"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "food_giver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_giver_id"], name: "index_food_listings_on_food_giver_id"
  end

  create_table "food_orders", force: :cascade do |t|
    t.integer "amount"
    t.string "note"
    t.bigint "food_receiver_id", null: false
    t.bigint "food_listing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_listing_id"], name: "index_food_orders_on_food_listing_id"
    t.index ["food_receiver_id"], name: "index_food_orders_on_food_receiver_id"
  end

  create_table "food_receivers", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sms_messages", force: :cascade do |t|
    t.string "mobile_number"
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "food_listings", "food_givers"
  add_foreign_key "food_orders", "food_listings"
  add_foreign_key "food_orders", "food_receivers"
end
