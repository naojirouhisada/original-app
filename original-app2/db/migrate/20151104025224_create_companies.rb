class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.datetime :establishment
      t.string :description
      t.string :industry
      t.string :type_of_industry
      t.string :site_name
      t.string :country
      t.string :prefecture
      t.string :city
      t.string :town_area
      t.integer :address
      t.string :building
      t.string :room

      t.timestamps null: false
    end
  end
end
