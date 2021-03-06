class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :homebase, :host, :email, :password, :password_confirmation, :avatar, :bio)
  end

  def account_update_params
    params.require(:user).permit(:name, :homebase, :host, :email, :password, :password_confirmation, :current_password, :avatar, :bio)
  end

  protected

end
