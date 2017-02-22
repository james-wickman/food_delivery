class OrderController < ApplicationController

  def index
  end

  def new
  end

  def create
    @div_id = params[:name]
    @order = Order.new(order_params)
    @ingredient = Ingredient.new(ingredient_params)
    if Ingredient.where(name: @ingredient.name).any?
      @ingredient = Ingredient.where(name: @ingredient.name).first
        if @order.save
          @order_ingredient = OrderIngredient.new(order_id: @order.id, ingredient_id: @ingredient.id, quantity: 1)
          if @order_ingredient.save
            respond_to do |format|
              format.js
            end        
          end 
        end 
    else
      if @ingredient.save
        if @order.save
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

  def show
    @order = Order.find(1)
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private

  def order_params
    params.permit(:user_id, :driver_id)
  end

  def ingredient_params
    params.permit(:name, :price, :walmart_id)
  end

end
