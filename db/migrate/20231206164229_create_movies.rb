class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.text :synopsis
      t.string :category
      t.string :poster

      t.timestamps
    end
  end
end
