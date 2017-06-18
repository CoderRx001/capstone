class Recipe < ApplicationRecord
  has_many :recipe_item
  has_many :food, :through => :recipe_item 

end
