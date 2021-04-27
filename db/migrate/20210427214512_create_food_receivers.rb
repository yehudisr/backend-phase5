class CreateFoodReceivers < ActiveRecord::Migration[6.1]
  def change
    create_table :food_receivers do |t|
      t.string :name
      t.string :location
      t.string :email
      t.password_digest :password

      t.timestamps
    end
  end
end
