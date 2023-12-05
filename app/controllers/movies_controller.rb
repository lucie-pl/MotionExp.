class MoviesController < ApplicationController

  def index
    # as we will get info on movies from the API, maybe we will need to change the code below
    @movies = SaveItem.all
  end

  def show
  end

end
