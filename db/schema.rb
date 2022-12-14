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

ActiveRecord::Schema[7.0].define(version: 2022_12_14_071444) do
  create_table "brews", force: :cascade do |t|
    t.string "batch"
    t.date "date"
    t.integer "product_id", null: false
    t.boolean "washed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "checklist_id"
    t.integer "equipments_id"
    t.index ["checklist_id"], name: "index_brews_on_checklist_id"
    t.index ["product_id"], name: "index_brews_on_product_id"
  end

  create_table "checklists", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.time "start_time"
    t.time "end_time"
    t.integer "brew_id", null: false
    t.integer "washer_id"
    t.integer "cheking_id"
    t.integer "equipment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brew_id"], name: "index_checklists_on_brew_id"
    t.index ["equipment_id"], name: "index_checklists_on_equipment_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "job_title_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.integer "equipment_types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_titles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "series_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "special_wash"
    t.index ["series_id"], name: "index_products_on_series_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "password_digest"
    t.boolean "admin_rule"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "brews", "checklists"
  add_foreign_key "brews", "products"
  add_foreign_key "checklists", "brews"
  add_foreign_key "checklists", "equipment"
  add_foreign_key "products", "series"
end
