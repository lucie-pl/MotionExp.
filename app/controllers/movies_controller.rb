class MoviesController < ApplicationController

  def index
    # to test the controller but as we will get info on movies from the API, we will need to change the code below
    @save_items = SaveItem.all
  end

  def show
    # to test the controller but as we will get info on movies from the API, we will need to change the code below
    @save_item = SaveItem.find(params[:api_id])
  end

end
