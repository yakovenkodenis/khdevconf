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

ActiveRecord::Schema.define(version: 20151115152625) do

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
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "contact_type_id"
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

  create_table "sponsorship_plans", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string   "type"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "about"
    t.string   "username"
    t.boolean  "subscription"
    t.string   "company_name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_type_id"
    t.integer  "sponsorship_plan_id"
  end

  add_index "users", ["sponsorship_plan_id"], name: "index_users_on_sponsorship_plan_id", using: :btree
  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree

  add_foreign_key "feedbacks", "users"
end
