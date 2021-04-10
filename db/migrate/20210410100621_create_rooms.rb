class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      
      t.integer :farmer_id
      t.integer :end_user_id

      t.timestamps
    end
  end
end
