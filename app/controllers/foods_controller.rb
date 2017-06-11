class FoodsController < ApplicationController

  def index
    @foods = Food.all 
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new()
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    food = Food.find(params[:id])
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    flash[:success] = "Food Destroyed"
    redirect_to "/"
  end

end

