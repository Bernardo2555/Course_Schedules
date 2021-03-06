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

ActiveRecord::Schema.define(version: 2020_09_14_213253) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "agendas", force: :cascade do |t|
    t.string "morning_one"
    t.string "morning_two"
    t.string "morning_three"
    t.string "morning_four"
    t.string "morning_five"
    t.string "afternoon_one"
    t.string "afternoon_two"
    t.string "afternoon_three"
    t.string "afternoon_four"
    t.string "afternoon_five"
    t.string "afternoon_six"
    t.string "evening_one"
    t.string "evening_two"
    t.string "evening_three"
    t.string "evening_four"
    t.string "evening_five"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_agendas_on_user_id"
  end

  create_table "class_rooms", force: :cascade do |t|
    t.integer "student_id"
    t.integer "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_class_rooms_on_schedule_id"
    t.index ["student_id"], name: "index_class_rooms_on_student_id"
  end

  create_table "courses", primary_key: "code_c", force: :cascade do |t|
    t.string "description"
    t.integer "ideal_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "user_type"
    t.integer "user_id"
    t.string "course_type"
    t.integer "course_id"
    t.string "weekday"
    t.string "group"
    t.string "time"
    t.string "time_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_type", "course_id"], name: "index_schedules_on_course_type_and_course_id"
    t.index ["user_type", "user_id"], name: "index_schedules_on_user_type_and_user_id"
  end

  create_table "students", primary_key: "ar", force: :cascade do |t|
    t.string "description"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "description"
    t.string "telephone"
    t.string "ar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
