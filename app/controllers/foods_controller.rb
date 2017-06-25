class FoodsController < ApplicationController

  def index
    @foods = Food.all 
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    search_term = params[:search_term]
    category =params[:category]

    if category
      @foods = Category.find_by(name: category).foods
    end
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.save
      flash[:success] = "Item NOW in your Pantry"
      redirect_to "/foods/#{@food.id}"
  end

  def show
    food
  end

  def edit
    food
  end

  def update
    if food.update_attributes(food_params)
      redirect_to food
    else
      render :edit
    end
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    flash[:success] = "Food Destroyed"
    redirect_to "/"
  end

private

  def food_params
    params.require(:food).permit(:category, :item_name, :item_number, :expiration)
    
  end

  def food
    @food ||= Food.find(params[:id])
  end


end