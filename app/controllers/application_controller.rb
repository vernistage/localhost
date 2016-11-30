class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    session[:location] = current_user.homebase
    users_show_path(resource)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys:[:avatar, :bio])
  end
end
