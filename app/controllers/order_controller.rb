class OrderController < ApplicationController

  def index
  end

  def new
  end

  def create
    @current_user = current_user
    @order = Order.new(order_params)
    @ingredient = Ingredient.new(ingredient_params)
    @search_page = false
    @div_id = "nothing"
    if params[:name]
      @search_page = true
      @div_id = params[:name]    
    end
    if current_user
      if Ingredient.where(name: @ingredient.name).any?
        @ingredient = Ingredient.where(name: @ingredient.name).first
        if current_order
          @order = current_order
          @order_ingredient = OrderIngredient.new(order_id: @order.id, ingredient_id: @ingredient.id, quantity: 1)
          if @order_ingredient.save
            respond_to do |format|
              format.js
            end        
          end
        else
          if @order.save
            session[:order_id] = @order.id
            @order_ingredient = OrderIngredient.new(order_id: @order.id, ingredient_id: @ingredient.id, quantity: 1)
            if @order_ingredient.save
              respond_to do |format|
                format.js
              end        
            end
          end 
        end
      else
        if @ingredient.save
          if current_order
            @order = current_order
            @order_ingredient = OrderIngredient.new(order_id: @order.id, ingredient_id: @ingredient.id, quantity: 1)
            if @order_ingredient.save
              respond_to do |format|
                format.js
              end        
            end
          else
            if @order.save
              session[:order_id] = @order.id
              @order_ingredient = OrderIngredient.new(order_id: @order.id, ingredient_id: @ingredient.id, quantity: 1)
              if @order_ingredient.save
                respond_to do |format|
                  format.js
                end        
              end
            end 
          end
        end
      end      
    end 
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    
  end

  def update
    @driver = current_driver
    @order = Order.find(params[:id])
    if @order.update_attributes(order_params)
      if @driver != nil
        redirect_to "/drivers/show", notice: 'Order was successfully Completed.' 
      end
    end
  end

  def destroy
  end
  
  private

  def order_params
    params.require(:order).permit(:user_id, :driver_id, :completed)
  end

  def ingredient_params
    params.permit(:name, :price, :walmart_id)
  end

end
