class SaveItemsController < ApplicationController
  def index
    @save_items = SaveItem.all
  end
end
