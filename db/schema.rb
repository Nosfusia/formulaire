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

ActiveRecord::Schema.define(version: 2018_09_03_094716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "q_to_as", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "reponse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_q_to_as_on_question_id"
    t.index ["reponse_id"], name: "index_q_to_as_on_reponse_id"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.bigint "theme_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_questionnaires_on_question_id"
    t.index ["theme_id"], name: "index_questionnaires_on_theme_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reponse_id"
  end

  create_table "reponses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "q_to_as", "questions"
  add_foreign_key "q_to_as", "reponses"
  add_foreign_key "questionnaires", "questions"
  add_foreign_key "questionnaires", "themes"
end
