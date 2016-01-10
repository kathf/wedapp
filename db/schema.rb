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

ActiveRecord::Schema.define(version: 20151220053447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contributions", force: :cascade do |t|
    t.integer  "guest_id"
    t.string   "name"
    t.string   "description"
    t.integer  "total_required"
    t.integer  "total_actual"
    t.boolean  "full"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "dietary_requirements", force: :cascade do |t|
    t.integer  "guest_id"
    t.boolean  "vegetarian"
    t.boolean  "vegan"
    t.boolean  "gluten_free"
    t.boolean  "dairy_free"
    t.boolean  "other"
    t.text     "other_description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.boolean  "send_notifications"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "rsvps", force: :cascade do |t|
    t.integer  "guest_id"
    t.integer  "linked_guest_id"
    t.string   "response"
    t.datetime "arrive"
    t.datetime "leave"
    t.date     "rsvp_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
