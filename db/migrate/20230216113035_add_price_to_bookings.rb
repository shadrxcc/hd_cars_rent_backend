class AddPriceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :price, :string
  end
end
