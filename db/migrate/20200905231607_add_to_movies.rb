class AddToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :list_movie_id, :integer
  end
end
