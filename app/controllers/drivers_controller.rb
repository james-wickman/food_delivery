class DriversController < ApplicationController
  def update
  	@driver = current_driver
  	respond_to do |format|
      if @driver.update_attributes(driver_params)
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
    @orders = @driver.orders
    @order = nil
    if current_driver.has_job
      @old_order = current_driver.get_current_job
    else
      @order = Order.get_next_available_job
    end
  end
  
  private
  def driver_params   #controller_params
    params.require(:driver).permit(:available)
  end
end