class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

  def create
    Review.create(params.require(:review).permit(:body, :rating, :booking_id))
    @current_user = current_user
    redirect_to users_show_path(@current_user)
  end

  def edit
    binding.pry
    @review = Review.find(params.permit(:id)[:id])
  end

  def update
    r = Review.find_by(booking_id: params[:review][:booking_id])
    r.update(params.require(:review).permit(:body, :rating, :booking_id))
    redirect_to users_show_path(current_user)
  end

  def show
    @review = Review.find(1)
    # @review = Review.find(num)
  end

end
