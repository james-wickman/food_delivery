class IngredientsController < ApplicationController
  def index
  end

  def show
  end 

  def edit
  end

  def create
    if current_user
      @current_user_id = current_user.id
    else
      @current_user_id = nil
    end
    @result = @client.search(params[:query], {categoryId: 976759})
    respond_to do |format|
      format.js 
    end
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
