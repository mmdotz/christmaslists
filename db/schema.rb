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

ActiveRecord::Schema.define(version: 20151213231212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clans", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "item",                         null: false
    t.string   "url"
    t.string   "vendor"
    t.integer  "cost",         default: 0
    t.string   "tracking_num"
    t.boolean  "bought",       default: false
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id", using: :btree

  create_table "recipients", force: :cascade do |t|
    t.integer  "age",        null: false
    t.text     "size"
    t.text     "notes"
    t.string   "first"
    t.string   "last"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "recipients", ["user_id"], name: "index_recipients_on_user_id", using: :btree

  create_table "relations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "clan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "relations", ["clan_id"], name: "index_relations_on_clan_id", using: :btree
  add_index "relations", ["user_id"], name: "index_relations_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first"
    t.string   "last"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.integer  "budget"
  end

  create_table "wishlists", force: :cascade do |t|
    t.string   "item",       null: false
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "wishlists", ["user_id"], name: "index_wishlists_on_user_id", using: :btree

  add_foreign_key "purchases", "users"
  add_foreign_key "recipients", "users"
  add_foreign_key "relations", "clans"
  add_foreign_key "relations", "users"
  add_foreign_key "wishlists", "users"
end
