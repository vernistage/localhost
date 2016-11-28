class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

  def create
    Review.new(params.require(:review).permit(:body, :rating, :booking_id))
    @current_user = current_user

    redirect_to users_show_path(@current_user)
  end

  def show
    @review = Review.find(1)
    # @review = Review.find(num)
  end

end
