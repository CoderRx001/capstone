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

    if search_term
      @food = Food.where(
                          "name iLIKE ? OR description iLIKE?",
                           "%#{search_term}%",
                           "%#{search_term}%"
                           )
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(
                    name: params[:name],
                    type: params[:type],
                    number: params[:number],
                    expire: params[:expire]
                    )
    if @food.save
      flash[:success] = "Item NOW in your Fridge"
      redirect_to "/foods/#{food.id}"
    else
      render 'new.html.erb'
    end
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

