class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.decimal :rating, precision: 1, scale: 1

      t.timestamps
    end
    add_index :movies, :title, unique: true
  end
end
