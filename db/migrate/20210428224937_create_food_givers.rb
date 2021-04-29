class CreateFoodGivers < ActiveRecord::Migration[6.1]
  def change
    create_table :food_givers do |t|
      t.string :name
      t.string :location
      t.string :category
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
