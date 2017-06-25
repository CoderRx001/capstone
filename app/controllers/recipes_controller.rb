class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    sort_attribute = params[:sort]
      if sort_attribute
        @recipes = Recipe.all.order(sort_attribute)
      end
  end


 def new
    @recipe = Recipe.new
  end
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
      flash[:success] = "Recipe now created"
      redirect_to "/recipes/#{@recipe.id}"
  end

  def show
    recipe
  end

  def edit
    recipe
  end
  def update
    if recipe.update_attributes(recipe_params)
      redirect_to recipe
    else
      render :edit
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    flash[:warning] = "Recipe Destroyed"
    redirect_to "/"
  end

private

  def recipe_params
    params.permit(:title, :image, :ingredients, :directions, :prep_time, :user_id)
    
  end

  def recipe
    @recipe ||= Recipe.find(params[:id])
  end
end