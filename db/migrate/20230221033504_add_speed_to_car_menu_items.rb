class AddSpeedToCarMenuItems < ActiveRecord::Migration[7.0]
  def change
    add_column :car_menu_items, :speed, :string
  end
end
