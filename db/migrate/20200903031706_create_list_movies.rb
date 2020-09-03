class CreateListMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :list_movies do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
