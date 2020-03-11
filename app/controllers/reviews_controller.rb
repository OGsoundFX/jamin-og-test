class ReviewsController < ApplicationController
  # Make a new review from the params/form input
  # Find who the writer is (person who's logged in) and set the review's writer
  # Find who the review is for (from the url/params) and set the review's receiver
  # Save the review and if successful redirect to where you want
  def create
    @review = Review.new(reviews_params)
    @writer = current_user
    @receiver = User.find(params["user_id"])
    @review.writer = @writer
    @review.receiver = @receiver
    if @review.save
      redirect_to profile_path(@receiver)
    else
      render "dashboards/index"
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:rating,:content)
  end
end
