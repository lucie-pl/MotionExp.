class SaveItemsController < ApplicationController

  def index
    @save_items = SaveItem.all
    if params[:query].present?
      sql_subquery = <<~SQL
        movies.title ILIKE :query
        OR movies.category ILIKE :query
        OR directors.first_name ILIKE :query
        OR directors.last_name ILIKE :query
        OR actors.first_name ILIKE :query
        OR actors.last_name ILIKE :query
      SQL
      @save_items = @save_items.joins(:directors).joins(:actors).where(sql_subquery, query: "%#{params[:query]}%").distinct
    end
  end
end
