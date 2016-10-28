class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user = User.find_by(token: session[:current_user_id])
  end

  def require_user
    redirect_to new_session_path unless current_user
  end

  helper_method :current_user
end
