class ScreeningTime < ApplicationRecord
  belongs_to :movie
  belongs_to :cinema
  has_many :save_items, through: :movie
  after_create_commit :generate_notifications

  private

  def generate_notifications
    save_items = self.save_items.where(marked: true)
    save_items.each do |save_item|
      Notification.create(
        notif_title: save_item.movie.title,
        content: "is programmed at #{cinema.name}",
        user: save_item.user,
        save_item: save_item
      )
    end
  end

end
