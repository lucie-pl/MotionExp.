class SaveItemsController < ApplicationController

  def index
    save_items = SaveItem.all
    @history_items = save_items.select { |save_item| save_item.history }
    @watchlist_items = save_items.reject { |save_item| save_item.history }

    # Might not work with the separation between watchlist and history list ! TODO !!!!!!!
    # if params[:query].present?
    #   sql_subquery = <<~SQL
    #     movies.title ILIKE :query
    #     OR movies.category ILIKE :query
    #     OR directors.first_name ILIKE :query
    #     OR directors.last_name ILIKE :query
    #     OR actors.first_name ILIKE :query
    #     OR actors.last_name ILIKE :query
    #   SQL
    #   save_items = save_items.joins(:directors).joins(:actors).where(sql_subquery, query: "%#{params[:query]}%").distinct
    # end

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
