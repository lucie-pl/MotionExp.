class CreateNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :notifications do |t|
      t.string :notif_title
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :save_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
