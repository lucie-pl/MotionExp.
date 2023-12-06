class ReviewsController < ApplicationController
  def new
    @save_item = Save_item.find(:save_item_id)
    @review = Review.new
  end

  def create
    @save_item = Save_item.find(:save_item_id)
    @review = Review.new(review_params)
    @review.save_item = @save_item
    if @review.save
      redirect_to my_movies_path
    else
      render "", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
