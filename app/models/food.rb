class Food < ApplicationRecord
  include Searchable
  
  has_many :pantry_item
  has_many :recipe

end
