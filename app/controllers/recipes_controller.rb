class RecipesController < ApplicationController
  def index
    if params[:title]
      @recipes = Recipe.search(params[:title]).order("created_at DESC")
    else
      @recipes = Recipe.all.order("created_at DESC")
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
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
