class AddDescription2ToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :description2, :text
  end
end
