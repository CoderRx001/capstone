class Food < ApplicationRecord
  has_many :pantry_item
  has_many :recipe

end
