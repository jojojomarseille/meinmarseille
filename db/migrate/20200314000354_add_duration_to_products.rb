class AddDurationToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :duration, :integer
  end
end
