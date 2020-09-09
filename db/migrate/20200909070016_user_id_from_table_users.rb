class UserIdFromTableUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :friendships, :user_id
  end
end
