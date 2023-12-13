class NotificationsController < ApplicationController
  skip_before_action :count_unseen_notifications, only: [:index]

  def index
    @notifications = current_user.notifications.order(created_at: :desc)
    @notifications.update_all(seen: true)
    @unseen_notifications_count = 0
  end
end
