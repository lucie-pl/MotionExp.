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
end
