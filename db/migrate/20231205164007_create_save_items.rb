class CreateSaveItems < ActiveRecord::Migration[7.1]
  def change
    create_table :save_items do |t|
      # t.integer :api_movie_id
      t.boolean :history, default: false
      t.boolean :marked, default: false
      t.string :title
      t.string :poster
      t.integer :year
      t.references :user, null: false, foreign_key: true
      t.references :api_movie, null: false, foreign_key: { to_table: :movies }

      t.timestamps
    end
  end
end
