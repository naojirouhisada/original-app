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

ActiveRecord::Schema.define(version: 20160120075445) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "micropost_id"
    t.string   "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "comments", ["micropost_id"], name: "index_comments_on_micropost_id"
  add_index "comments", ["user_id", "micropost_id", "created_at"], name: "index_comments_on_user_id_and_micropost_id_and_created_at"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

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
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "members", ["company_id"], name: "index_members_on_company_id"
  add_index "members", ["user_id"], name: "index_members_on_user_id"

  create_table "microposts", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id"

  create_table "relationships", force: :cascade do |t|
    t.integer  "follow_id"
    t.integer  "followed_id"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["follow_id", "followed_id"], name: "index_relationships_on_follow_id_and_followed_id", unique: true
  add_index "relationships", ["follow_id"], name: "index_relationships_on_follow_id"
  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_kanji"
    t.string   "last_kanji"
    t.string   "first_kana"
    t.string   "last_kana"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.datetime "birth"
    t.string   "password_digest"
    t.string   "email"
    t.string   "work_place"
    t.string   "high_school"
    t.string   "university"
    t.string   "graduate_school"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
