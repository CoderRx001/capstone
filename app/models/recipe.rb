class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :food, optional: true

  attr_accessor :ingredient_names

  before_save :save_ingredient_names

  def ingredient_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_updated_at
    updated_at.strftime('%b %d, %Y')
  end

  def friendly_prep_time
    # "125 minutes" "or"
    # "2 hours, 5 minutes"
    hours = prep_time / 60
    minutes = prep_time % 60
    time_message = ""
    time_message += "#{hours}#{"Hour".pluralize(hours)}" if hours > 0
    time_message += ", " if hours > 0 && minutes > 0
    time_message += "#{minutes} #{"Minute".pluralize(minutes)}" if minutes > 0
    time_message
  end

  def chef
    # user.name
  end

  private 

  def save_ingredient_names
    if @ingredient_names
      @ingredient_names.split(",").map { |name| self.ingredients.where(name: name.strip).first_or_create! }
    end
  end

  def recipe_params
    params.require(recipe).permit(:ingredients, :title)
  end

  def self.search(search)
    where("title LIKE ? OR ingredients LIKE ? OR cooking_instructions LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

end