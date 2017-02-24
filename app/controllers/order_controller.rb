class OrderController < ApplicationController

  def index
  end

  def new
  end

  def create
    @current_user = current_user
    @order = Order.new(order_params)
    @ingredient = Ingredient.new(ingredient_params)
    @div_id = params[:name]
    if current_user
      if Ingredient.where(name: @ingredient.name).any?
        @ingredient = Ingredient.where(name: @ingredient.name).first
        if current_order != nil
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
          if current_order != nil
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
      else
      flash[:notice] = "Sign in to add groceries"
      respond_to do |format|
        format.html
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
    params.permit(:user_id, :driver_id, :completed, :available)
  end

  def ingredient_params
    params.permit(:name, :price, :walmart_id)
  end

end
