class AddExtraUrlToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :extra_url, :string
  end
end
