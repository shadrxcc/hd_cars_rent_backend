class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :user
      t.string :car
      t.date :start_date
      t.string :location

      t.timestamps
    end
  end
end
