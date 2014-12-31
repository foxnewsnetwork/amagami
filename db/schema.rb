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

ActiveRecord::Schema.define(version: 20141231022615) do

  create_table "apiv1_challengers", force: :cascade do |t|
    t.string   "character",  limit: 255
    t.text     "comments",   limit: 65535
    t.text     "roots",      limit: 65535
    t.string   "hobbies",    limit: 255
    t.text     "projects",   limit: 65535
    t.string   "skills",     limit: 255
    t.string   "books",      limit: 255
    t.string   "genres",     limit: 255
    t.string   "email",      limit: 255
    t.string   "address",    limit: 255
    t.string   "sex",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
