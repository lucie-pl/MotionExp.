class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :save_item

  validates :notif_title, :content, presence: true
end
