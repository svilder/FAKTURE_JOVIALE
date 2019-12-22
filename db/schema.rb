# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_22_141333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bank_accounts", force: :cascade do |t|
    t.string "description"
    t.integer "iban"
    t.integer "swift"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_bank_accounts_on_user_id"
  end

  create_table "bills", force: :cascade do |t|
    t.string "title"
    t.datetime "date_creation"
    t.datetime "date_due_paiement"
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "validated"
    t.boolean "paid"
    t.boolean "sent"
    t.bigint "user_id", null: false
    t.index ["client_id"], name: "index_bills_on_client_id"
    t.index ["user_id"], name: "index_bills_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "companie_id", null: false
    t.index ["companie_id"], name: "index_clients_on_companie_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "adress_line_1"
    t.string "adress_line_2"
    t.string "postal_code"
    t.string "city"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "siret"
  end

  create_table "items", force: :cascade do |t|
    t.string "description"
    t.integer "quantity"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "bill_id", null: false
    t.index ["bill_id"], name: "index_items_on_bill_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "adress_line_1"
    t.string "adress_line_2"
    t.string "postal_code"
    t.string "city"
    t.string "country"
    t.integer "siret"
    t.string "phone"
    t.boolean "tva"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bank_accounts", "users"
  add_foreign_key "bills", "clients"
  add_foreign_key "bills", "users"
  add_foreign_key "clients", "companies", column: "companie_id"
  add_foreign_key "items", "bills"
  add_foreign_key "items", "users"
end
