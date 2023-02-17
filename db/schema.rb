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

ActiveRecord::Schema[7.0].define(version: 2023_02_17_041206) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reference_tables_degrees", force: :cascade do |t|
    t.integer "number"
    t.integer "minimum"
    t.integer "medium"
    t.integer "maximum"
    t.integer "hay_degrees"
    t.integer "ggs_degrees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reference_tables_position_types", force: :cascade do |t|
    t.string "name"
    t.integer "minimum_degree"
    t.integer "maximum_degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reference_tables_role_levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "reference_tables_degree_id", null: false
    t.bigint "reference_tables_position_type_id", null: false
    t.index ["reference_tables_degree_id"], name: "index_role_levels_on_degree_id"
    t.index ["reference_tables_position_type_id"], name: "index_role_levels_on_position_type_id"
  end

  add_foreign_key "reference_tables_role_levels", "reference_tables_degrees"
  add_foreign_key "reference_tables_role_levels", "reference_tables_position_types"
end
