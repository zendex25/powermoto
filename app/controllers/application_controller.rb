class ApplicationController < ActionController::Base
	before_action :authorize
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  before_filter :the_cart

  def authorize
  	unless User.find_by(id: session[:user_id])
  		redirect_to login_url, notice: "Please log in"
  	end
  end

  private

  def the_cart
  	@cart = session[:cart] || {}

  end

end
