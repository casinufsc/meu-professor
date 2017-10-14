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

ActiveRecord::Schema.define(version: 20171005232309) do

  create_table "course_teachers", force: :cascade do |t|
    t.integer "course_id"
    t.integer "teacher_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_teachers_on_course_id"
    t.index ["teacher_id"], name: "index_course_teachers_on_teacher_id"
    t.index ["user_id"], name: "index_course_teachers_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.integer "code"
    t.text "description"
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_courses_on_subject_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "tel"
    t.string "site"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "response_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["response_id"], name: "index_questions_on_response_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "halfyear_id", null: false
    t.integer "course_teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_teacher_id"], name: "index_ratings_on_course_teacher_id"
    t.index ["halfyear_id"], name: "index_ratings_on_halfyear_id"
  end

  create_table "responses", force: :cascade do |t|
    t.integer "score"
    t.text "comment"
    t.integer "user_id", null: false
    t.integer "rating_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rating_id"], name: "index_responses_on_rating_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.datetime "year"
    t.integer "halfyear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.integer "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_subjects_on_department_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "ra"
    t.integer "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_teachers_on_department_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "ra"
    t.string "name"
    t.integer "situation"
    t.string "email"
    t.integer "role", default: 0
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_users_on_subject_id"
  end

end
