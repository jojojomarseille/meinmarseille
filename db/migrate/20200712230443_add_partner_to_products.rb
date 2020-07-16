class AddPartnerToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :partner, :boolean
  end
end
