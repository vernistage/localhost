class UsersController < ApplicationController

  def index
    @category = Category.find(params[:category])
    @users = User.where(homebase: session[:location])
  end

end
