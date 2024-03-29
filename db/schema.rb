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

ActiveRecord::Schema.define(version: 2019_08_08_041518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "permission_rols", force: :cascade do |t|
    t.bigint "rol_id"
    t.bigint "permission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permission_rols_on_permission_id"
    t.index ["rol_id"], name: "index_permission_rols_on_rol_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "permission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string "rol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "names"
    t.string "paternal_surname"
    t.string "maternal_surname"
    t.integer "age"
    t.boolean "active"
    t.bigint "rol_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rol_id"], name: "index_users_on_rol_id"
  end

  add_foreign_key "permission_rols", "permissions"
  add_foreign_key "permission_rols", "rols"
  add_foreign_key "users", "rols"
end
