class ReviewsController < ApplicationController
  def new
    @save_item = Save_item.find(:save_item_id)
    @review = Review.new
  end

  def create
    raise
    @save_item = Save_item.find(:save_item_id)
    @review = Review.new(review_params)
    @review.save
    redirect_to
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
