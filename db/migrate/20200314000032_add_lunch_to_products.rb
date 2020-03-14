class AddLunchToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :lunch, :boolean
  end
end
