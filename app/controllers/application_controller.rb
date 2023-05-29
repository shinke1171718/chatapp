class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    flash[:notice] = "ログインに成功しました"
    conversations_path(resource)
  end

  def after_sign_out_path_for(resource)
    flash[:alert] = "ログアウトしました"
    new_user_session_path
  end


  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
  end

end
