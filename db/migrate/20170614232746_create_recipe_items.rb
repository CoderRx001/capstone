class CreateRecipeItems < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_items do |t|

      t.timestamps
    end
  end
end
