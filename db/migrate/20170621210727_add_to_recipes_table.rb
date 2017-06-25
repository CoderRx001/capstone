class AddToRecipesTable < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :title, :string
    add_column :recipes, :ingredients, :string
    add_column :recipes, :directions, :string
    add_column :recipes, :image_url, :string
    add_column :recipes, :prep_time, :integer
    add_column :recipes, :user_id, :integer
  end
end
