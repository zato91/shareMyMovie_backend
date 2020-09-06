class RemoveListMovieIdFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :list_movie_id, :string
  end
end
