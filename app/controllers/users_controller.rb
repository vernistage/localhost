class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def become_host
    current_user.host = true
    current_user.save
    redirect_to users_show_path(@current_user)
  end

  def add_expertise
  end

  def post_expertise
    UserCategory.find_or_create_by(host_id: current_user.id, category_id: params[:user_category][:category_id])
    t = Tag.find_or_create_by(specialty: params[:specialty], category_id: params[:user_category][:category_id])
    UserTag.find_or_create_by(host_id: current_user.id, tag_id: t.id)
    redirect_to users_show_path(@current_user)
  end


  private

end
