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

ActiveRecord::Schema.define(version: 20141211111029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "icon"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hobbies", force: true do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "company"
    t.string   "position"
    t.string   "date"
    t.text     "description"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "link"
    t.text     "description"
    t.string   "date"
    t.string   "level",       limit: 32
    t.text     "resume"
    t.string   "img"
    t.string   "cover"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "category_id"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "websites", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "email"
    t.integer  "phone"
    t.string   "cover_photo"
    t.string   "position"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
