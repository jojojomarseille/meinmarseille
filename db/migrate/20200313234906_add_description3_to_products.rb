class AddDescription3ToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :description3, :text
  end
end
