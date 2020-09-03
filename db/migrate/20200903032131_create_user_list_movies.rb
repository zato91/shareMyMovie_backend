class CreateUserListMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :user_list_movies do |t|
      t.integer :user_id
      t.integer :list_movie_id

      t.timestamps
    end
  end
end
