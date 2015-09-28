# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150928152958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gears", force: :cascade do |t|
    t.string   "item"
    t.string   "description"
    t.string   "size"
    t.string   "brand"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.integer  "gear_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reservations", ["gear_id"], name: "index_reservations_on_gear_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "stname"
    t.string   "stnumber"
    t.string   "city"
    t.string   "zipcode"
    t.string   "tel"
    t.integer  "gear_id"
    t.integer  "reservation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "users", ["gear_id"], name: "index_users_on_gear_id", using: :btree
  add_index "users", ["reservation_id"], name: "index_users_on_reservation_id", using: :btree

  add_foreign_key "reservations", "gears"
  add_foreign_key "users", "gears"
  add_foreign_key "users", "reservations"
end
