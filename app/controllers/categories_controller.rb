class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    session[:location] = params[:location]
  end

  def show
    @category = Category.find(params[:id])
    hosts_by_location = User.where(homebase: session[:location])
    @filtered_users = []
    hosts_by_location.each do |host|
      if host.categories.include?(@category)
        @filtered_users << host
      end
    end
    @error = "We're sorry, no hosts yet exist in #{@location} for #{@category}."
  end

end
