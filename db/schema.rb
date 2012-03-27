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

ActiveRecord::Schema.define(:version => 20120327133957) do

  create_table "entries", :force => true do |t|
    t.integer  "language_id"
    t.string   "word"
    t.integer  "subtopic_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "entries", ["language_id"], :name => "index_entries_on_language_id"
  add_index "entries", ["subtopic_id"], :name => "index_entries_on_subtopic_id"

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subtopics", :force => true do |t|
    t.integer  "topic_id"
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "subtopics", ["topic_id"], :name => "index_subtopics_on_topic_id"
  add_index "subtopics", ["user_id"], :name => "index_subtopics_on_user_id"

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "topics", ["user_id"], :name => "index_topics_on_user_id"

  create_table "translations", :force => true do |t|
    t.integer  "entry_id"
    t.integer  "language_id"
    t.string   "word"
    t.string   "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "translations", ["entry_id"], :name => "index_translations_on_entry_id"
  add_index "translations", ["language_id"], :name => "index_translations_on_language_id"

  create_table "users", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "persistence_token"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "crypted_password"
    t.string   "password_salt"
  end

end
