class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :phone_number
      t.string :email
      t.string :password
      t.integer :employee
      t.integer :capital
      t.integer :sales
      t.string :representative
      t.datetime :establishment
      t.string :description
      t.string :industry
      t.string :type_of_industry
      t.string :site_name

      t.timestamps null: false
    end
  end
end
