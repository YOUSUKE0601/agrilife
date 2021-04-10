class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      
      t.integer :room_id
      t.integer :farmer_id
      t.integer :end_user_id
      t.text :message

      t.timestamps
    end
  end
end
