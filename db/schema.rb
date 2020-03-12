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

ActiveRecord::Schema.define(version: 2020_02_05_145230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "distortions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emotions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "log_emotions", force: :cascade do |t|
    t.bigint "log_id"
    t.bigint "emotion_id"
    t.integer "before"
    t.integer "after"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emotion_id"], name: "index_log_emotions_on_emotion_id"
    t.index ["log_id"], name: "index_log_emotions_on_log_id"
  end

  create_table "log_sub_emotions", force: :cascade do |t|
    t.bigint "sub_emotion_id"
    t.bigint "log_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["log_id"], name: "index_log_sub_emotions_on_log_id"
    t.index ["sub_emotion_id"], name: "index_log_sub_emotions_on_sub_emotion_id"
  end

  create_table "logs", force: :cascade do |t|
    t.string "outcome"
    t.string "event"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_logs_on_user_id"
  end

  create_table "sub_emotions", force: :cascade do |t|
    t.string "name"
    t.bigint "emotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emotion_id"], name: "index_sub_emotions_on_emotion_id"
  end

  create_table "thoughts", force: :cascade do |t|
    t.string "n_thought"
    t.integer "n_before"
    t.integer "n_after"
    t.string "p_thought"
    t.integer "p_belief"
    t.bigint "log_id"
    t.bigint "distortion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["distortion_id"], name: "index_thoughts_on_distortion_id"
    t.index ["log_id"], name: "index_thoughts_on_log_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "log_emotions", "emotions"
  add_foreign_key "log_emotions", "logs"
  add_foreign_key "log_sub_emotions", "logs"
  add_foreign_key "log_sub_emotions", "sub_emotions"
  add_foreign_key "logs", "users"
  add_foreign_key "sub_emotions", "emotions"
  add_foreign_key "thoughts", "distortions"
  add_foreign_key "thoughts", "logs"
end
