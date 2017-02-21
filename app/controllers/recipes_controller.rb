class RecipesController < ApplicationController
  def index
  end

  def show

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
