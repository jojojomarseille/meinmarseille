class AddPartnernameToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :partnername, :string
  end
end
