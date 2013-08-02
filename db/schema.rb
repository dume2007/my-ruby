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

ActiveRecord::Schema.define(version: 20130802175125) do

  create_table "gg_classlists", force: true do |t|
    t.string   "classname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gg_news", force: true do |t|
    t.integer  "classid"
    t.string   "imgurl"
    t.string   "title"
    t.string   "author"
    t.integer  "filesize"
    t.string   "fileimg"
    t.integer  "onclick"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gg_news_contents", force: true do |t|
    t.integer  "news_id"
    t.text     "content"
    t.text     "extra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gg_news_files", force: true do |t|
    t.integer  "news_id"
    t.text     "downpath"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
