class AddJaugeToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :jauge, :integer
  end
end
