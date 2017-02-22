class OrderController < ApplicationController
  def index
  end

  def new
  end

  def create
    @div_id = params[:name]
    @order = Order.new(user_id: params[:user_id])
    @ingredient = Ingredient.new(name: params[:item], walmart_id: params[:walmart_id])
    @order_ingredient = nil
    if @order.save & @ingredient.save
      @order_ingredient = OrderIngredient.new(order_id: @order.id, ingredient_id: @ingredient.id, quantity: 1)
      if @order_ingredient.save
        respond_to do |format|
          format.js
        end        
      end   
    end
    byebug
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
end
