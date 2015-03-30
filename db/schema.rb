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

ActiveRecord::Schema.define(version: 20150330023952) do

  create_table "answers", force: :cascade do |t|
    t.text     "content"
    t.integer  "like"
    t.integer  "fav"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id_id"
    t.integer  "user_id"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["user_id_id"], name: "index_answers_on_user_id_id"

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "answer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "favorites", ["answer_id"], name: "index_favorites_on_answer_id"
  add_index "favorites", ["created_at"], name: "index_favorites_on_created_at"
  add_index "favorites", ["question_id"], name: "index_favorites_on_question_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

# Could not dump table "questions" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "users", force: :cascade do |t|
    t.string   "email",             null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "screen_name"
    t.string   "residencenow"
    t.string   "origin"
    t.string   "status"
    t.boolean  "mailmagazine"
    t.string   "school"
    t.text     "bio"
    t.string   "residence_country"
    t.text     "comment"
    t.integer  "child_age1"
    t.integer  "child_age2"
    t.text     "wannaknow"
    t.text     "know"
    t.integer  "parent"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
