class ApplicationController < ActionController::Base

  def current_user
    reset_session if params[:reset_session] == true
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
    helper_method :current_user

  # def admin_singed_in?
  #   current_user && current_user.admin 
  # end
  
end
