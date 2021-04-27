class CreateFoodListings < ActiveRecord::Migration[6.1]
  def change
    create_table :food_listings do |t|
      t.string :name
      t.string :description
      t.integer :amount
      t.datetime :start_time
      t.datetime :end_time
      t.belongs_to :food_giver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
