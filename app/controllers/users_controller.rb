class UsersController < ApplicationController

  def show
    @user = User.find_by_id(params[:id])
	@title = @user.name
  end
  
  def new
  	@user = User.new
    @title = "Register"
  end
  
  def create
  	@user = User.new(params[:user])
	if @user.save
		flash[:success] = "Welcome to your bucket list!"
		redirect_to @user
	else
		@title = "Register"
  		render 'new'
	end
  end
  
end
