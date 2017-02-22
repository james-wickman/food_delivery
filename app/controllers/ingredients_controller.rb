class IngredientsController < ApplicationController
  def index
  end

  def show
    
  end 

  def edit
  end

  def create
    @result = @client.search(params[:query], {categoryId: 976759})
    respond_to do |format|
      format.js 
    end
    p @result.items[0].price
  end

  def update
  end

  def new
  end

  def destroy
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :price)
  end
end
