class AddImgToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :img, :string, default: "No picture"
  end
end
