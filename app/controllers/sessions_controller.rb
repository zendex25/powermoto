class SessionsController < ApplicationController
	skip_before_action :authorize
  def new
    @fronts = Front.all
  end

  def create
    @fronts = Front.all
  	user = User.find_by(name: params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to admin_url
  	else
  		redirect_to login_url, alert: "Invalid user/password combination"
  	end
  end

  def destroy
    @fronts = Front.all
  	session[:user_id] = nil
  	redirect_to store_url, notice: "Logged out"
  end
end
