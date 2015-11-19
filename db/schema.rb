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

ActiveRecord::Schema.define(version: 20151119070055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendees", force: :cascade do |t|
    t.string   "username"
    t.string   "company_name"
    t.boolean  "subscription"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "conferences", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "date"
    t.string   "place"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "conferences_speakers", id: false, force: :cascade do |t|
    t.integer "conference_id", null: false
    t.integer "speaker_id",    null: false
  end

  create_table "contact_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contact_types", ["contact_id"], name: "index_contact_types_on_contact_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "contact"
    t.integer  "organisers_contact_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "contacts", ["organisers_contact_id"], name: "index_contacts_on_organisers_contact_id", using: :btree

  create_table "feedbacks", force: :cascade do |t|
    t.text     "feedback"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "feedbacks", ["user_id"], name: "index_feedbacks_on_user_id", using: :btree

  create_table "organisers_contacts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string   "company_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "partnership_perks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "partnership_plan_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "partnership_perks", ["partnership_plan_id"], name: "index_partnership_perks_on_partnership_plan_id", using: :btree

  create_table "partnership_plans", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.string   "username"
    t.string   "company_name"
    t.text     "about"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "type"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "contact_types", "contacts"
  add_foreign_key "contacts", "organisers_contacts"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "partnership_perks", "partnership_plans"
end
