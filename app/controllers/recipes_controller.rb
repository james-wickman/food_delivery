class RecipesController < ApplicationController
  def index
  end

  def show
    set_recipe
    @ingredient_list = set_recipe.ingredient_array.split(",")
    @index = 0 
  end

  def edit
  end

  def create
  end

  def update
  end

  def new
  end

  def destroy
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:user).permit(:title, :total_time, :instructions)
  end
end
