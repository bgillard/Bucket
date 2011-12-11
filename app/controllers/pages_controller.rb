class PagesController < ApplicationController
  
  def home
    @title = "Home"
	@micropost = Micropost.new if logged_in?
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
  
end
