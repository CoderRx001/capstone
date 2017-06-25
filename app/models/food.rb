class Food < ApplicationRecord
  has_many :pantry_item
  has_many :recipe_item
  has_many :recipe, :through => :recipe_item
end
