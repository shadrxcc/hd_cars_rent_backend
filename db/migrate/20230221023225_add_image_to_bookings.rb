class AddImageToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :image, :string
  end
end
