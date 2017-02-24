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
end
