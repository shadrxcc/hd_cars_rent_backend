# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_21_033637) do
  create_table "bookings", force: :cascade do |t|
    t.string "user"
    t.string "car"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.string "price"
    t.string "image"
  end

  create_table "car_menu_items", force: :cascade do |t|
    t.string "car_name"
    t.string "image_url"
    t.string "price"
    t.string "car_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "speed"
    t.string "consumption"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
