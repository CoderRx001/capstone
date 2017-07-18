class Food < ApplicationRecord
  has_many :pantry_item
  has_many :recipe

  def self.search(search)
    where("item_name LIKE ? OR ingredients LIKE ? OR cooking_instructions LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
end
