class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :logged_in
  helper_method :current_member

  private

  def current_member
    @current_member ||= User.find(session[:current_member])
  end

  def logged_in
    if current_member == nil
      redirect_to root_path
    end
  end
end
