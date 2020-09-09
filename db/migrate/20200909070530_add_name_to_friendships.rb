class AddNameToFriendships < ActiveRecord::Migration[6.0]
  def change
    add_column :friendships, :name, :string
  end
end
