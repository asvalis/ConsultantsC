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

ActiveRecord::Schema.define(version: 20131030235809) do

  create_table "admins", force: true do |t|
    t.string   "admin_name"
    t.string   "email_address"
    t.string   "admin_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "picture_file"
    t.string   "file_location"
    t.integer  "admin_id"
    t.string   "last_edited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "image"
    t.integer  "admin_id"
    t.string   "last_edited_by"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["project_id"], name: "index_pictures_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "video_file"
    t.string   "file_location"
    t.integer  "admin_id"
    t.string   "last_edited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
