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

ActiveRecord::Schema.define(version: 2018_06_21_174631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.integer "proficiency_average"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "sender"
    t.integer "recipient"
    t.bigint "language_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_messages_on_language_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "proficiencies", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "language_id"
    t.integer "proficiency_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_proficiencies_on_language_id"
    t.index ["user_id"], name: "index_proficiencies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "messages", "languages"
  add_foreign_key "messages", "users"
  add_foreign_key "proficiencies", "languages"
  add_foreign_key "proficiencies", "users"
end
