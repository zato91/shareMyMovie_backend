class RenameMovieListIdToListMovieId < ActiveRecord::Migration[6.0]
  def change
    rename_column :movie_list_movies, :movie_list_id, :list_movie_id
  end
end
