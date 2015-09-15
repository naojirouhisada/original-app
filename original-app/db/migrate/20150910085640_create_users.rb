class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_kanji
      t.string :last_kanji
      t.string :first_kanamoji
      t.string :last_kanamoji
      t.string :first_name
      t.string :last_name
      t.string :high_school
      t.string :university
      t.string :work_for
      t.string :email
      t.string :email_confirmation
      t.string :country
      t.string :postal_code
      t.string :prefecture
      t.string :municipality
      t.string :town_area_address
      #brname => build_name or room_name
      t.string :br_name 
      t.string :phone_number
      t.string :telephone_number
      t.string :password_digest

      t.timestamps null: false
      
      t.index :email, unique: true 
    end
  end
end
