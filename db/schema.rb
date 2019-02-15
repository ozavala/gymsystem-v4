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

ActiveRecord::Schema.define(version: 2019_02_15_150306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gymsites", force: :cascade do |t|
    t.string "name"
    t.string "legal_id"
    t.text "description"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.string "phone"
    t.integer "phone_type"
    t.string "email"
    t.string "logo"
    t.date "from_date"
    t.date "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.bigint "gymsite_id"
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.date "birthday"
    t.boolean "is_active"
    t.string "avatar"
    t.text "notes"
    t.date "from_date"
    t.date "to_date"
    t.integer "level"
    t.integer "membership_type"
    t.decimal "membership_price"
    t.integer "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gymsite_id"], name: "index_members_on_gymsite_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "avatar"
    t.boolean "is_admin"
    t.bigint "gymsite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["gymsite_id"], name: "index_users_on_gymsite_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "members", "gymsites"
  add_foreign_key "users", "gymsites"
end
