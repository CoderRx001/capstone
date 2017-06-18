class CreatePantryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :pantry_items do |t|

      t.timestamps
    end
  end
end
