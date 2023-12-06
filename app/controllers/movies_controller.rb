class MoviesController < ApplicationController

  def index
    # to test the controller but as we will get info on movies from the API, we will need to change the code below
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
    # to test the controller but as we will get info on movies from the API, we will need to change the code below

    @movie = Movie.find(params[:api_id])

    # There may be a better way to do this (to avoid several lines of code here)
    # Doing simply @save_item.movie = @movie does not work (probably because the Movie table has no associations)
    @save_item = SaveItem.new

  end

end
