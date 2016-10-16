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

ActiveRecord::Schema.define(version: 20161015172158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artisans", force: :cascade do |t|
    t.string   "desription"
    t.string   "compagny_name"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "manager_name"
    t.string   "phone_number"
    t.string   "manager_email"
    t.string   "insurer"
    t.string   "insurance_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "interventions", force: :cascade do |t|
    t.string   "nature"
    t.integer  "client_id"
    t.integer  "artisan_id"
    t.float    "quotation_amount"
    t.float    "final_amount"
    t.datetime "asked_date"
    t.datetime "scheduled_date"
    t.string   "avancement"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["artisan_id"], name: "index_interventions_on_artisan_id", using: :btree
    t.index ["client_id"], name: "index_interventions_on_client_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
