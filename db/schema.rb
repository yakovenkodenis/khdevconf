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

ActiveRecord::Schema.define(version: 20151116073222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conferences", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "date"
    t.string   "place"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "speaker_id"
    t.integer  "attendee_id"
    t.integer  "sponsor_id"
  end

  create_table "contact_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "contact"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "contact_type_id"
    t.integer  "organisers_contact_id"
  end

  add_index "contacts", ["contact_type_id"], name: "index_contacts_on_contact_type_id", using: :btree

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
    t.integer  "contact_id"
  end

  add_index "organisers_contacts", ["contact_id"], name: "index_organisers_contacts_on_contact_id", using: :btree

  create_table "speeches", force: :cascade do |t|
    t.integer  "speaker_id"
    t.string   "name"
    t.text     "description"
    t.time     "speech_start"
    t.time     "speech_finish"
    t.time     "qa_start"
    t.time     "qa_finish"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "timetable_id"
  end

  add_index "speeches", ["timetable_id"], name: "index_speeches_on_timetable_id", using: :btree

  create_table "sponsorship_plans", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "sponsorship_plans", ["user_id"], name: "index_sponsorship_plans_on_user_id", using: :btree

  create_table "timetables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string   "type"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "user_types", ["user_id"], name: "index_user_types_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "about"
    t.string   "username"
    t.boolean  "subscription"
    t.string   "company_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_type_id"
    t.integer  "sponsorship_plan_id"
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
    t.integer  "speech_id"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["speech_id"], name: "index_users_on_speech_id", using: :btree
  add_index "users", ["sponsorship_plan_id"], name: "index_users_on_sponsorship_plan_id", using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree

  add_foreign_key "feedbacks", "users"
  add_foreign_key "organisers_contacts", "contacts"
  add_foreign_key "speeches", "timetables"
  add_foreign_key "sponsorship_plans", "users"
  add_foreign_key "user_types", "users"
  add_foreign_key "users", "speeches"
  add_foreign_key "users", "user_types"
end
