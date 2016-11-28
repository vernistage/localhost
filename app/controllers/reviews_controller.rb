class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

	def create
		@review = params[:review]
		# @review.booking_id =
		# @review.save
	end

  def show
    @review = Review.find(1)
    # @review = Review.find(num)
  end

end
