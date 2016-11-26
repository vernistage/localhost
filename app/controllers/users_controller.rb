class UsersController < ApplicationController
	layout "hosts"

  def index
    @category = Category.find(params[:category])
    @location = session[:location]
    @users = User.where(homebase: @location)
    @error = "We're sorry, no hosts yet exist in #{@location} for #{@category}."
  end

end
