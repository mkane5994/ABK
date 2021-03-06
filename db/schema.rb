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

ActiveRecord::Schema.define(version: 2018_12_31_055427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "cus_f_name"
    t.string "cus_l_name"
    t.string "cus_p_phone"
    t.string "cus_a_phone"
    t.string "cus_address"
    t.string "cus_zip"
    t.string "cus_email"
    t.string "cus_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cus_city"
    t.string "cus_state"
  end

  create_table "services", force: :cascade do |t|
    t.string "svc_name"
    t.string "svc_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "state_code"
    t.string "state_name"
    t.index ["state_code"], name: "index_states_on_state_code", unique: true
  end

end
