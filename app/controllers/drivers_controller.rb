class DriversController < ApplicationController
  def show
  	@driver = current_driver
  end
end 
