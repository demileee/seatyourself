class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def ensure_logged_in
    if !current_user
      flash[:alert] = "please log in"
      redirect_to root_url
    end
  end

  def ensure_ownership
    if current_user.id != @restaurant.user_id
      flash[:alert] = 'Not authorized'
      redirect_to @restaurant
    end
  end
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
  helper_method :ensure_logged_in
end
