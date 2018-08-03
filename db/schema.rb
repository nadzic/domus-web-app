# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_06_114151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drivers", force: :cascade do |t|
    t.string "driver_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "maps", force: :cascade do |t|
    t.string "map_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measurments", force: :cascade do |t|
    t.string "name"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simulation_entries", force: :cascade do |t|
    t.integer "time"
    t.decimal "position_x"
    t.decimal "position_y"
    t.decimal "position_z"
    t.decimal "rotation_x"
    t.decimal "rotation_y"
    t.decimal "rotation_z"
    t.decimal "rotation_w"
    t.float "speed"
    t.decimal "steering_wheel_position"
    t.decimal "gas_pedal_position"
    t.decimal "brake_pedal_position"
    t.boolean "engine_running"
    t.bigint "simulation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_id"], name: "index_simulation_entries_on_simulation_id"
  end

  create_table "simulations", force: :cascade do |t|
    t.bigint "driver_id"
    t.bigint "map_id"
    t.bigint "measurment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_simulations_on_driver_id"
    t.index ["map_id"], name: "index_simulations_on_map_id"
    t.index ["measurment_id"], name: "index_simulations_on_measurment_id"
  end

  add_foreign_key "simulation_entries", "simulations"
  add_foreign_key "simulations", "drivers"
  add_foreign_key "simulations", "maps"
  add_foreign_key "simulations", "measurments"
end
