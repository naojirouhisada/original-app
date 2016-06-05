class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :micropost, index: true
      t.string :content

      t.timestamps null: false
      t.index [:user_id,:micropost_id ,:created_at ]
    end
  end
end
