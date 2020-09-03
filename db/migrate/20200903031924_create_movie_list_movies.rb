class CreateMovieListMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_list_movies do |t|
      t.integer :movie_id
      t.integer :movie_list_id

      t.timestamps
    end
  end
end
