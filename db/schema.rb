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

ActiveRecord::Schema.define(version: 2020_04_06_192640) do

  create_table "courses", primary_key: "code", force: :cascade do |t|
    t.string "description"
    t.integer "ideal_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", primary_key: "ar", force: :cascade do |t|
    t.string "description"
    t.string "email"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "professor_id"
    t.integer "course_id"
    t.string "students"
    t.string "weekday"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_schedules_on_course_id"
    t.index ["professor_id"], name: "index_schedules_on_professor_id"
  end

  create_table "students", primary_key: "ar", force: :cascade do |t|
    t.string "description"
    t.string "email"
    t.string "telephone"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
