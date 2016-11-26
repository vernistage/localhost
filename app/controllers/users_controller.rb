class UsersController < ApplicationController


  def index
    @category = Category.find(params[:category])
    @location = session[:location]
    @users = User.where(homebase: @location)
    @error = "We're sorry, no hosts yet exist in #{@location} for #{@category}."
  end

  def show
    @user = User.find(params[:id])
  end

end
