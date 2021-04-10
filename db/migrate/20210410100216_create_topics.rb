class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      
      t.integer :farmer_id
      t.string :title
      t.text :body
      t.string :topic_image_id
      

      t.timestamps
    end
  end
end
