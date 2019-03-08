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

ActiveRecord::Schema.define(version: 2019_03_07_193412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_periods", force: :cascade do |t|
    t.date "from_date"
    t.date "to_date"
    t.bigint "period_type_id"
    t.bigint "gymsite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gymsite_id"], name: "index_account_periods_on_gymsite_id"
    t.index ["period_type_id"], name: "index_account_periods_on_period_type_id"
  end

  create_table "account_types", force: :cascade do |t|
    t.string "acc_type_code"
    t.string "classification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "billing_accounts", force: :cascade do |t|
    t.decimal "balance", precision: 20, scale: 2
    t.integer "status"
    t.bigint "member_id"
    t.date "payment_due_date"
    t.bigint "gl_account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gl_account_id"], name: "index_billing_accounts_on_gl_account_id"
    t.index ["member_id"], name: "index_billing_accounts_on_member_id"
  end

  create_table "gl_accounts", force: :cascade do |t|
    t.string "acc_code"
    t.string "acc_parent_code"
    t.string "name"
    t.string "description"
    t.bigint "account_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_type_id"], name: "index_gl_accounts_on_account_type_id"
  end

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

  create_table "invoice_items", force: :cascade do |t|
    t.integer "transaction_id"
    t.integer "invoice_item_seq"
    t.integer "taxable_flag"
    t.decimal "quantity"
    t.decimal "unit_price", precision: 20, scale: 2
    t.string "item_description"
    t.bigint "product_id"
    t.bigint "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_invoice_items_on_invoice_id"
    t.index ["product_id"], name: "index_invoice_items_on_product_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "authorization_code"
    t.string "autorization_no"
    t.date "transaction_date"
    t.date "invoice_date"
    t.decimal "amount", precision: 20, scale: 2
    t.bigint "gymsite_id"
    t.bigint "member_id"
    t.integer "invoice_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gymsite_id"], name: "index_invoices_on_gymsite_id"
    t.index ["member_id"], name: "index_invoices_on_member_id"
  end

  create_table "member_payments", force: :cascade do |t|
    t.date "due_date"
    t.date "payment_date"
    t.decimal "amount_due", precision: 20, scale: 2
    t.decimal "payment_amount", precision: 20, scale: 2
    t.integer "payment_method"
    t.bigint "billing_account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["billing_account_id"], name: "index_member_payments_on_billing_account_id"
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

  create_table "organization_accounts", force: :cascade do |t|
    t.date "from_date"
    t.date "to_date"
    t.bigint "gymsite_id"
    t.bigint "gl_account_id"
    t.bigint "account_period_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_period_id"], name: "index_organization_accounts_on_account_period_id"
    t.index ["gl_account_id"], name: "index_organization_accounts_on_gl_account_id"
    t.index ["gymsite_id"], name: "index_organization_accounts_on_gymsite_id"
  end

  create_table "period_types", force: :cascade do |t|
    t.string "period_type_code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "bar_code"
    t.string "internal_code"
    t.integer "product_category"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "gymsite_id"
    t.bigint "trainer_id"
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "member_id"
    t.index ["gymsite_id"], name: "index_schedules_on_gymsite_id"
    t.index ["member_id"], name: "index_schedules_on_member_id"
    t.index ["trainer_id"], name: "index_schedules_on_trainer_id"
  end

  create_table "taxes_dues", force: :cascade do |t|
    t.string "description"
    t.decimal "amount", precision: 20, scale: 2
    t.bigint "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_taxes_dues_on_invoice_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "skill"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.bigint "gymsite_id"
    t.index ["gymsite_id"], name: "index_trainers_on_gymsite_id"
  end

  create_table "training_sessions", force: :cascade do |t|
    t.date "visit_date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "member_id"
    t.bigint "gymsite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gymsite_id"], name: "index_training_sessions_on_gymsite_id"
    t.index ["member_id"], name: "index_training_sessions_on_member_id"
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

  create_table "work_outs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "repetions"
    t.decimal "weight"
    t.decimal "distance"
    t.decimal "speed"
    t.datetime "span"
    t.bigint "training_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["training_session_id"], name: "index_work_outs_on_training_session_id"
  end

  add_foreign_key "account_periods", "gymsites"
  add_foreign_key "account_periods", "period_types"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "billing_accounts", "gl_accounts"
  add_foreign_key "billing_accounts", "members"
  add_foreign_key "gl_accounts", "account_types"
  add_foreign_key "invoice_items", "invoices"
  add_foreign_key "invoice_items", "products"
  add_foreign_key "invoices", "gymsites"
  add_foreign_key "invoices", "members"
  add_foreign_key "member_payments", "billing_accounts"
  add_foreign_key "members", "gymsites"
  add_foreign_key "organization_accounts", "account_periods"
  add_foreign_key "organization_accounts", "gl_accounts"
  add_foreign_key "organization_accounts", "gymsites"
  add_foreign_key "schedules", "gymsites"
  add_foreign_key "schedules", "members"
  add_foreign_key "schedules", "trainers"
  add_foreign_key "taxes_dues", "invoices"
  add_foreign_key "trainers", "gymsites"
  add_foreign_key "training_sessions", "gymsites"
  add_foreign_key "training_sessions", "members"
  add_foreign_key "users", "gymsites"
  add_foreign_key "work_outs", "training_sessions"
end
