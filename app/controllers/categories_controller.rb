class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    session[:location] = params[:location]
  end

end
