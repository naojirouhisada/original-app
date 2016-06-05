class CreateReplays < ActiveRecord::Migration
  def change
    create_table :replays do |t|
      t.string :content
      t.references :user, index: true, foreign_key: true
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
      t.index [:user_id,:comment_id ,:created_at ]
    end
  end
end
