class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.integer :friendship_id

      t.timestamps
    end
  end
end
