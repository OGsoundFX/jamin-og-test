class ReviewsController < ApplicationController
  # Make a new review from the params/form input
  # Find who the writer is (person who's logged in) and set the review's writer
  # Find who the review is for (from the url/params) and set the review's receiver
  # Save the review and if successful redirect to where you want
  def index
    @receiver = User.find(params["user_id"])
    @reviews = current_user.reviews_received
  end

  def create
    @review = Review.new(reviews_params)
    @writer = current_user
    @review.writer = @writer
    if @review.save
      redirect_to profile_path(reviews_params[:receiver_id])
    else
      render "dashboards/index"
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:rating, :content, :receiver_id)
  end
end
