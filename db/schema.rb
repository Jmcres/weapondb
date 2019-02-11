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

ActiveRecord::Schema.define(version: 2019_02_10_203937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_weapons", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "weapon_id", null: false
    t.index ["user_id", "weapon_id"], name: "index_users_weapons_on_user_id_and_weapon_id"
    t.index ["weapon_id", "user_id"], name: "index_users_weapons_on_weapon_id_and_user_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "weaponsystem"
    t.string "name"
    t.string "img_url"
    t.string "role"
    t.string "country"
    t.string "side"
    t.string "gun"
    t.string "ammo"
    t.string "speed"
    t.string "armor"
    t.string "range"
    t.string "crew"
    t.integer "firepowergun"
    t.integer "firepowerammo"
    t.integer "speedscore"
    t.integer "health"
    t.integer "protection"
    t.integer "rangescore"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
