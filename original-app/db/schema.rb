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

ActiveRecord::Schema.define(version: 20151104025224) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_number"
    t.string   "email"
    t.string   "password"
    t.integer  "employee"
    t.integer  "capital"
    t.integer  "sales"
    t.string   "representative"
    t.datetime "establishment"
    t.string   "description"
    t.string   "industry"
    t.string   "type_of_industry"
    t.string   "site_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "country"
    t.string   "prefecture"
    t.string   "city"
    t.string   "town_area"
    t.integer  "address"
    t.string   "building"
    t.string   "room"
    t.datetime "datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_kanji"
    t.string   "last_kanji"
    t.string   "first_kana"
    t.string   "last_kana"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.datetime "birth"
    t.string   "password"
    t.string   "email"
    t.string   "work_place"
    t.string   "high_school"
    t.string   "university"
    t.string   "graduate_school"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
