class SaveItemsController < ApplicationController
  def index
    save_items = SaveItem.all
    @history_items = save_items.select { |save_item| save_item.history }
    @watchlist_items = save_items.reject { |save_item| save_item.history }
  end
end
