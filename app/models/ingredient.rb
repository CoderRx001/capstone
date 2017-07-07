class Ingredient < ApplicationRecord
  belongs_to :recipe, class_name: Recipe
end
