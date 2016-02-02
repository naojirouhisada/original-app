class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :follow, index: true
      t.references :followed, index: true
      t.string :status

      t.timestamps null: false
      
      t.index [:follow_id , :followed_id] , unique: true

    end
  end
end
