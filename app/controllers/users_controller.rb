class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def become_host
    current_user.host = true
    current_user.save
    redirect_to users_show_path(@current_user)
  end

end
