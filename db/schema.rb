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

ActiveRecord::Schema.define(version: 20141113035959) do

  create_table "illnesses", force: true do |t|
    t.string   "user"
    t.date     "start"
    t.date     "end"
    t.boolean  "congestion"
    t.boolean  "fever"
    t.boolean  "headache"
    t.boolean  "shits"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "musclepains"
    t.boolean  "vomiting"
    t.boolean  "migraine"
    t.boolean  "fatigue"
    t.boolean  "cramps"
    t.boolean  "nausea"
    t.boolean  "chills"
    t.boolean  "noappetite"
  end

end
