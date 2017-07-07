class AddAndRemoveFields < ActiveRecord::Migration[5.1]
  def change
    remove_reference :ingredients, :food
  end
end
