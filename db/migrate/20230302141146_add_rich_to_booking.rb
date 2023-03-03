class AddRichToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :rich, :boolean
  end
end
