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

ActiveRecord::Schema[8.0].define(version: 2025_10_07_122313) do
  create_table "properties", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.integer "year_built", null: false
    t.string "website_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_properties_on_address", unique: true
    t.index ["name"], name: "index_properties_on_name", unique: true
    t.index ["website_url"], name: "index_properties_on_website_url", unique: true
  end

  create_table "units", force: :cascade do |t|
    t.string "name", null: false
    t.integer "bedroom_count", null: false
    t.decimal "bathroom_count", null: false
    t.integer "unit_size", null: false
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_units_on_name", unique: true
    t.index ["property_id"], name: "index_units_on_property_id"
  end

  add_foreign_key "units", "properties"
end
