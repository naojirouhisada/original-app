class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :country
      t.string :prefecture
      t.string :city
      t.string :town_area
      t.integer :address
      t.string :building
      t.string :room
      t.datetime :datetime

      t.timestamps null: false
    end
  end
end
