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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111012192417) do

  create_table "episodes", :force => true do |t|
    t.string   "title"
    t.integer  "number"
    t.text     "notes"
    t.string   "file"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.text     "image_description"
    t.string   "short_description"
  end

  create_table "participations", :force => true do |t|
    t.integer  "episode_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsorships", :force => true do |t|
    t.integer  "sponsor_id"
    t.integer  "episode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "amount"
  end

  create_table "taggables", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "episode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.boolean  "host"
    t.text     "bio"
    t.text     "dump"
    t.string   "screen_name"
    t.string   "avatar_url"
    t.string   "location"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
