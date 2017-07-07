class AddFoodRefToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_reference :ingredients, :food, foreign_key: true
    add_reference :ingredients, :recipe, foreign_key: true
  end
end
