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

ActiveRecord::Schema.define(version: 20160204121008) do

  create_table "draws", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "draw_name"
    t.string   "jackpot"
    t.string   "prize_distributed"
    t.date     "date_time"
    t.string   "round"
    t.string   "priority"
    t.boolean  "available"
    t.string   "week"
    t.string   "tuesday_active"
    t.string   "original_draw_date"
    t.string   "time_left"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "game_name"
    t.string   "minimum_bet"
    t.string   "hours_before_closing_draw"
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "match_1"
    t.string   "match_2"
    t.string   "match_3"
    t.string   "match_4"
    t.string   "match_5"
    t.string   "match_6"
    t.string   "match_7"
    t.string   "match_8"
    t.string   "match_9"
    t.string   "match_10"
    t.string   "match_11"
    t.string   "match_12"
    t.string   "match_13"
    t.string   "match_14"
    t.string   "match_15"
    t.integer  "draw_id"
  end

  add_index "matches", ["draw_id"], name: "index_matches_on_draw_id"

  create_table "numbers", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "ticket_number"
    t.string   "amount"
    t.integer  "draw_id"
  end

  add_index "numbers", ["draw_id"], name: "index_numbers_on_draw_id"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
