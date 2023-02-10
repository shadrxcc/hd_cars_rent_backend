class CreateCarMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :car_menu_items do |t|
      t.string :car_name
      t.string :image_url
      t.string :price
      t.string :car_description
      t.timestamps
    end
  end
end
