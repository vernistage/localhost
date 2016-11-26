module UsersHelper

  def current_location
    session[:location]
  end

end
