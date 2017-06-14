class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :require_login

  def require_login
    redirect_to :root unless session.include? :name
  end

  def current_user
    session[:name]
  end
end
