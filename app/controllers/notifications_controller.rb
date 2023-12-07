class NotificationsController < ApplicationController
  def index
    @notifications = Notification.all
  end

  # def show
  #   notification = Notification.find(params[:id])
  #   movie_id = notification.save_item.api_movie_id
  #   @movie = Movie.find(movie_id)
  # end
end
