class RecipesController < ApplicationController
  before_action :load_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = params[:search].present? ? Recipe.search(%w(ingredients directions title), params[:search]) : Recipe.all
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
    @ingredients = @recipe.ingredients
    @foods = Food.all
    puts "@ingredients.pluck(:name): #{@ingredients.pluck(:name).inspect}"
    puts "@foods.pluck(:item_name): #{@foods.pluck(:item_name).inspect}"
    @intersection = (@ingredients.pluck(:name) & @foods.pluck(:item_name))
    puts "@intersection.count: #{@intersection.count}"
    puts "@intersection: #{@intersection.inspect}"
    @intersection_count = (@ingredients.pluck(:name) & @foods.pluck(:item_name)).count
  end

  def edit
  end

  def update
    if @recipe.update_attributes(recipe_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    flash[:warning] = "Recipe Destroyed"
    redirect_to "/"
  end



private

  def recipe_params
    params.permit(:title, :image, :ingredient_names, :directions, :prep_time, :user_id)
    
  end

  def load_recipe
    @recipe = Recipe.find(params[:id])
  end

end
