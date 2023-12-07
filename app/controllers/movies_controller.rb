class MoviesController < ApplicationController

  def index
    # As we will get info on movies from the API, we may need to change the code below
    @movies = Movie.all
    if params[:query].present?
      sql_subquery = <<~SQL
        movies.title ILIKE :query
        OR movies.category ILIKE :query
        OR directors.first_name ILIKE :query
        OR directors.last_name ILIKE :query
        OR actors.first_name ILIKE :query
        OR actors.last_name ILIKE :query
      SQL
      @movies = @movies.joins(:directors).joins(:actors).where(sql_subquery, query: "%#{params[:query]}%").distinct
    end
  end

  def show
    # As we will get info on movies from the API, we may need to change the code below
    @movie = Movie.find(params[:api_id])
    @save_item = SaveItem.new
  end

end
