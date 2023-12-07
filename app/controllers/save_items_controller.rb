class SaveItemsController < ApplicationController

  def index
    save_items = SaveItem.where(user: current_user)
    @history_items = save_items.select { |save_item| save_item.history }
    @watchlist_items = save_items.reject { |save_item| save_item.history }

    if params[:history_query].present?
      @history_items = Movie.find(@history_items).select { |item| item.title.downcase.include?(params[:history_query].downcase) }
    elsif params[:watchlist_query].present?
      @watchlist_items = Movie.find(@watchlist_items).select { |item| item.title.downcase.include?(params[:watchlist_query].downcase) }
    end
  end

  def create
    @save_item = SaveItem.new(save_item_params)
    @save_item.api_movie_id = params[:movie_api_id]
    @save_item.user = current_user
    if @save_item.save
      redirect_to movie_path(params[:movie_api_id])
    else
      @movie = Movie.find(params[:movie_api_id])
      render "movies/show", status: :unprocessable_entity
    end
  end

  def update

  end


  private

  def save_item_params
    params.require(:save_item).permit(:title, :poster, :year, :history)
  end

end
