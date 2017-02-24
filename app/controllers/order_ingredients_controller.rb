class OrderIngredientsController < ApplicationController
  def index
    @order = current_order
    @user = current_user
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
    @order = current_order
    @order_ingredient = OrderIngredient.find(order_ingredient_params[:id])
    if @order_ingredient.update_attributes(order_ingredient_params)
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    @order = current_order
    @order_ingredient = OrderIngredient.find(params[:id])
    if @order_ingredient.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def order_ingredient_params
    params.permit(:id, :quantity)
  end
end
