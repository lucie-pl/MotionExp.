class MoviesController < ApplicationController

  def index
    # to test the controller but as we will get info on movies from the API, we will need to change the code below
    @movies = Movie.all
  end

  def show
    # to test the controller but as we will get info on movies from the API, we will need to change the code below
    @movie = Movie.find(params[:api_id])
  end

end
