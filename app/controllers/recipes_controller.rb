class RecipesController < ApplicationController
  def index
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    end
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    if @recipe.save
      redirect_to @recipe
    end
  end

  def destroy
  
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:description)
  end
end
