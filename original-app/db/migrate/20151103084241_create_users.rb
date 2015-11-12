class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_kanji
      t.string :last_kanji
      t.string :first_kana
      t.string :last_kana
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.datetime :birth
      t.string :password_digest
      t.string :email
      t.string :work_place
      t.string :high_school
      t.string :university
      t.string :graduate_school
      
      t.index :email , unique: true

      t.timestamps null: false
    end
  end
end
