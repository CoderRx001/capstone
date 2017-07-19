class FoodsController < ApplicationController

  def index
    # params[:q] then its a search
    @foods = params[:search].present? ? Food.search(%w(item_name), params[:search]) : Food.all
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