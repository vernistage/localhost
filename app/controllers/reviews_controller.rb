class ReviewsController < ApplicationController
	
	def new
		@review = Review.new
	end

	def create
		binding.pry
	end

end