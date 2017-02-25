class RecipesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.js
      if params[:title]
        @recipes = Recipe.search(params[:title]).order("created_at DESC")
      else
        @recipes = Recipe.all.order("created_at DESC")
      end
    end
  end

  def show
    if current_user
      @current_user_id = current_user.id
    else
      @current_user_id = nil
    end
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
