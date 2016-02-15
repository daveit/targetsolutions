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

ActiveRecord::Schema.define(version: 20160215042854) do

  create_table "archeries", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.text     "details"
    t.boolean  "active"
    t.integer  "due_id"
    t.integer  "make_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "archeries", ["due_id"], name: "index_archeries_on_due_id"
  add_index "archeries", ["make_id"], name: "index_archeries_on_make_id"

  create_table "barrels", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.text     "details"
    t.string   "twist"
    t.boolean  "active"
    t.integer  "due_id"
    t.integer  "make_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "bore"
    t.string   "profile"
    t.string   "material"
    t.integer  "qty"
    t.decimal  "price"
  end

  add_index "barrels", ["due_id"], name: "index_barrels_on_due_id"
  add_index "barrels", ["make_id"], name: "index_barrels_on_make_id"

  create_table "dues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "miscellaneous", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.text     "details"
    t.boolean  "active"
    t.integer  "due_id"
    t.integer  "make_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "miscellaneous", ["due_id"], name: "index_miscellaneous_on_due_id"
  add_index "miscellaneous", ["make_id"], name: "index_miscellaneous_on_make_id"

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "details"
    t.string   "author"
    t.date     "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "optics", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.text     "details"
    t.boolean  "active"
    t.integer  "due_id"
    t.integer  "make_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.decimal  "price"
    t.string   "mag"
  end

  add_index "optics", ["due_id"], name: "index_optics_on_due_id"
  add_index "optics", ["make_id"], name: "index_optics_on_make_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "details"
    t.string   "author"
    t.date     "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rifles", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "bore"
    t.text     "details"
    t.boolean  "active"
    t.integer  "make_id"
    t.integer  "when_due_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "due_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "style"
    t.decimal  "price"
  end

  add_index "rifles", ["due_id"], name: "index_rifles_on_due_id"

  create_table "stocks", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.text     "details"
    t.boolean  "active"
    t.integer  "due_id"
    t.integer  "make_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "stocks", ["due_id"], name: "index_stocks_on_due_id"
  add_index "stocks", ["make_id"], name: "index_stocks_on_make_id"

  create_table "triggers", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.text     "details"
    t.boolean  "active"
    t.integer  "due_id"
    t.integer  "make_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "triggers", ["due_id"], name: "index_triggers_on_due_id"
  add_index "triggers", ["make_id"], name: "index_triggers_on_make_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "when_dues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
