class RecipesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(id: params[:id])
    if @recipe.save
      redirect_to @recipe
    end
  end

  def edit
  end
end
