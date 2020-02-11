class AddChildToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :childs, :integer
  end
end
