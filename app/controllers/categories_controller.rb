class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    session[:location] = params[:location]
    respond_to do |format|
      format.html {render layout: false}
    end
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
    @error = "We're sorry, no hosts yet exist in #{session[:location]} for #{@category.title.downcase}."
  end

end
