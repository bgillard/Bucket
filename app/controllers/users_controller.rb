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
		login @user
		flash[:success] = "Welcome to your bucket list!"
		redirect_to @user
	else
		@title = "Register"
  		render 'new'
	end
  end
  	
  def edit
  	@user = User.find(params[:id])
  	@title = "Edit Profile"
  end
  
  def update
  	@user = User.find(params[:id])
	if @user.update_attributes(params[:user])
		flash[:success] = "Your changes have been saved."
		redirect_to @user
	else
		@title = "Edit Profile"
  		render 'edit'
	end
  end
  
end
