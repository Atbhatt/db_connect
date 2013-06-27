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

ActiveRecord::Schema.define(version: 20130627001741) do

  create_table "batch_drivers", force: true do |t|
    t.string "job"
    t.string "key"
  end

  create_table "table_batch_drivers", force: true do |t|
    t.string "job"
    t.string "key"
  end

  create_table "user_facts", force: true do |t|
    t.integer "user_id"
    t.text    "graph_data"
    t.text    "likes"
    t.text    "books"
    t.text    "music"
    t.text    "movies"
    t.text    "games"
    t.text    "television"
    t.text    "posts"
    t.text    "links"
  end

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
