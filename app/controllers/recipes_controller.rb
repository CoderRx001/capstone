class RecipesController < ApplicationController
  before_action :load_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
    sort_attribute = params[:sort]
      if sort_attribute
        @recipes = Recipe.all.order(sort_attribute)
      end

      # @response = Unirest.get('https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/queries/analyze?q=salmon+with+fusilli+and+no+nuts',
      #   headers:{
      #     "X-Mashape-Key" => "JUB17IbNrqmshd3XhTaboJ4q0cUup1oyk7ajsnCmRfWhZ3q6OG"
      #     # "Content-Type" => "application/json",
      #     # "Accept" => "application/json"
      #   }
      # ).body.parse

      if params[:search]
        @recipes = Recipe.search(params[:search]).order("created_at DESC")
      else
        @recipes = Recipe.all.order("created_at DESC")
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
    @ingredients = @recipe.ingredients
    @foods = Food.all
    @intersection = (@ingredients.pluck(:name) & @foods.pluck(:item_name))
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
