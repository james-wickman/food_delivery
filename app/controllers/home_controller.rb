class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to users_show_path
  	elsif driver_signed_in?
  		redirect_to drivers_show_path
  	end
  	@user = User.new
  end
end
