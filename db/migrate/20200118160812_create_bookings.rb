class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :comment
      t.integer :participants

      t.timestamps
    end
  end
end
