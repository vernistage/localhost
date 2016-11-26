class UsersController < ApplicationController
	layout "hosts"

  def index
    @category = Category.find(params[:category])
    @location = session[:location]
    @users = User.where(homebase: @location)
  end

end
