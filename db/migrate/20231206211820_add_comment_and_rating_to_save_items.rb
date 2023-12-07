class AddCommentAndRatingToSaveItems < ActiveRecord::Migration[7.1]
  def change
    add_column :save_items, :rating, :integer, null: false, default: 0
  end
end
