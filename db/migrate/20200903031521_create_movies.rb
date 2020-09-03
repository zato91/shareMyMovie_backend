class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :picture
      t.integer :rating
      t.string :description
      t.string :extra_info

      t.timestamps
    end
  end
end
