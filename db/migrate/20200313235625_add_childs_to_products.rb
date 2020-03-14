class AddChildsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :childs, :boolean
  end
end
