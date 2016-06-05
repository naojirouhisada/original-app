class CreateCorporateUsers < ActiveRecord::Migration
  def change
    create_table :corporate_users do |t|
      t.string :login_id
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :status,default: true

      t.timestamps null: false
    end
  end
end
