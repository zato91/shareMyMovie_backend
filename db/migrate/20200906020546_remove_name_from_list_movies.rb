class RemoveNameFromListMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :list_movies, :name, :string
  end
end
