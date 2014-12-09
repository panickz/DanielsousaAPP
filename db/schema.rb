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

ActiveRecord::Schema.define(version: 20141208171200) do

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.string   "position"
    t.text     "text"
    t.string   "first_date"
    t.string   "seconde_date"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "img"
    t.string   "img_cover"
    t.integer  "year"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "title"
    t.integer  "skill"
    t.integer  "skills_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills_categories", force: true do |t|
    t.string   "title"
    t.integer  "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "websites", force: true do |t|
    t.string   "title"
    t.string   "email"
    t.integer  "phone"
    t.string   "name"
    t.string   "position"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
