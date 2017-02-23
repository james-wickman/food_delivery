class DriversController < ApplicationController
  def update
  	@driver = current_driver
  	respond_to do |format|
      if @driver.update_attributes(driver_params)
      	byebug
        format.js 
        format.html { redirect_to @driver, notice: 'driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver }
      else
        format.html { render :edit }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
  	@driver = current_driver
  end
  private
  def driver_params   #controller_params
    params.require(:driver).permit(:available)
  end
end