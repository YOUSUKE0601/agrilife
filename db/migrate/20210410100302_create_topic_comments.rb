class CreateTopicComments < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_comments do |t|
      
      t.integer :end_user_id
      t.integer :topic_id
      t.text :comment

      t.timestamps
    end
  end
end
