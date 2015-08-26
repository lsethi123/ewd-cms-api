class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :sender_id, index: true, foreign_key: true
      t.integer :recipient_id, index: true, foreign_key: true
      t.belongs_to :conversation, index: true, foreign_key: true
      t.text :message

      t.timestamps null: false
    end
  end
end
