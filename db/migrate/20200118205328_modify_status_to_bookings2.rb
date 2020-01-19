class ModifyStatusToBookings2 < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :status, :integer, default: 0, null: false
  end
end
