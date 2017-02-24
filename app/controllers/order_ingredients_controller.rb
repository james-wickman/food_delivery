class OrderIngredientsController < ApplicationController
  def index
    if current_order
      @order = current_order
      p Ingredient.first.update_prices(@order)
    else
      redirect_back(fallback_location: root_path)
    end
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
