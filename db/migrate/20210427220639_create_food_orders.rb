class CreateFoodOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :food_orders do |t|
      t.integer :amount
      t.string :note
      t.belongs_to :food_receiver, null: false, foreign_key: true
      t.belongs_to :food_listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
