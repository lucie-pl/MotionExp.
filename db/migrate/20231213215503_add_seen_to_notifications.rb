class AddSeenToNotifications < ActiveRecord::Migration[7.1]
  def change
    add_column :notifications, :seen, :boolean, null: false, default: false
  end
end
