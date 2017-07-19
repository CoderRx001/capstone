class Recipe < ApplicationRecord
  include Searchable

  belongs_to :food, optional: true

  has_many :ingredients
 

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

# this wont work because you are using a string not the join table
  def save_ingredient_names
    if @ingredient_names
      @ingredient_names.split(",").map { |name| self.ingredients.where(name: name.strip).first_or_create! }
    end
  end

  def recipe_params
    params.require(recipe).permit(:ingredients, :title)
  end


end