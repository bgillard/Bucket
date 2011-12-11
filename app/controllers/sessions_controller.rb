class SessionsController < ApplicationController
  
  def new
  	@title = "Login"
  end
  
  def create
  	user = User.authenticate(params[:session][:email],
							 params[:session][:password])
	if user.nil?
		flash.now[:error] = "Invalid email or password."
		render 'new'
	else
		login user
		redirect_to user
	end
  end
  
  def destroy
  end

end
