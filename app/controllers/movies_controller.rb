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
    @current_save_item = SaveItem.where(user: current_user, api_movie_id: @movie.id).first
    @save_item = SaveItem.new


    @actor_list= ""
    @movie.actors.each do |actor|
      if @actor_list == ""
        @actor_list+= "#{actor.first_name} #{actor.last_name}"
      else
        @actor_list+= ", #{actor.first_name} #{actor.last_name}"
      end
    end
  end
end
