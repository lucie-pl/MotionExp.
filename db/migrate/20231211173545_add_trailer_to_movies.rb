class AddTrailerToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :trailer_url, :text
  end
end
