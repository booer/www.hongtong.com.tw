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

ActiveRecord::Schema.define(version: 20160113025445) do

  create_table "about_images", force: :cascade do |t|
    t.integer  "page"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finalimgs", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "img"
    t.string   "title"
    t.text     "desc"
    t.text     "detail"
    t.text     "etc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "finalimgs", ["product_id"], name: "index_finalimgs_on_product_id"

  create_table "home_images", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "letters", force: :cascade do |t|
    t.string   "personal_name"
    t.string   "company_name"
    t.string   "company_address"
    t.string   "mail"
    t.string   "tel"
    t.text     "msg"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pages", force: :cascade do |t|
    t.text     "page_cn"
    t.text     "page_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "status",     default: false, null: false
    t.boolean  "lang",       default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "image"
  end

  create_table "products", force: :cascade do |t|
    t.string   "pname"
    t.text     "desc"
    t.text     "detail"
    t.text     "feature"
    t.string   "pname_en"
    t.text     "desc_en"
    t.text     "detail_en"
    t.text     "feature_en"
    t.string   "imagea"
    t.string   "imageb"
    t.string   "imagec"
    t.string   "imaged"
    t.boolean  "lang",       default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.text     "desc"
    t.boolean  "lang",       default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string   "tel"
    t.string   "fax"
    t.string   "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "nickname"
    t.boolean  "admin",                  default: false, null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
