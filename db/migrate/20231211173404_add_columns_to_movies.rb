class AddColumnsToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :actors, :string
    add_column :movies, :directors, :string
  end
end
