class DropMovieListMovies < ActiveRecord::Migration[6.0]
  def change
    drop_table :movie_list_movies
  end
end
