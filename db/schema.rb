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

ActiveRecord::Schema.define(version: 2020_03_02_144432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jam_sessions", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "genre"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string "location"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_jam_sessions_on_user_id"
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "spot_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_participations_on_spot_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "spots", force: :cascade do |t|
    t.bigint "jam_session_id"
    t.bigint "instrument_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_spots_on_instrument_id"
    t.index ["jam_session_id"], name: "index_spots_on_jam_session_id"
  end

  create_table "user_intruments", force: :cascade do |t|
    t.string "level"
    t.string "since"
    t.bigint "instrument_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_user_intruments_on_instrument_id"
    t.index ["user_id"], name: "index_user_intruments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "jam_sessions", "users"
  add_foreign_key "participations", "spots"
  add_foreign_key "participations", "users"
  add_foreign_key "spots", "instruments"
  add_foreign_key "spots", "jam_sessions"
  add_foreign_key "user_intruments", "instruments"
  add_foreign_key "user_intruments", "users"
end
