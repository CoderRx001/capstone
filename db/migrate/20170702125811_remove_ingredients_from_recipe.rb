class RemoveIngredientsFromRecipe < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :ingredients
    add_reference :recipes, :food, foreign_key: true
  end
end
