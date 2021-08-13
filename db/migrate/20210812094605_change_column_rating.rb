class ChangeColumnRating < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :rating
    add_column :movies, :rating, :integer
  end
end
