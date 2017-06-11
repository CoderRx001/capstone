class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :category
      t.string :item_name
      t.integer :item_number
      t.string :expiration

      t.timestamps
    end
  end
end
