class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      
      t.integer :end_user_id
      t.integer :farmer_id

      t.timestamps
    end
  end
end
