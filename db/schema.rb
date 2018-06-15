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

ActiveRecord::Schema.define(version: 20180615224629) do

  create_table "checkins", force: :cascade do |t|
    t.text "obs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "wod_id"
    t.integer "user_id"
    t.index ["user_id"], name: "index_checkins_on_user_id"
    t.index ["wod_id"], name: "index_checkins_on_wod_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "coach_id"
    t.index ["coach_id"], name: "index_users_on_coach_id"
  end

  create_table "wods", force: :cascade do |t|
    t.text "pre"
    t.text "technique"
    t.text "workout"
    t.text "pos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
