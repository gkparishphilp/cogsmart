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

ActiveRecord::Schema.define(version: 20140613183450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.string   "ip"
    t.string   "contact_type"
    t.string   "http_referrer"
    t.string   "status",        default: "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["email"], name: "index_contacts_on_email", using: :btree

  create_table "documents", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "type"
    t.string   "category"
    t.string   "path"
    t.string   "language",      default: "English"
    t.boolean  "require_email", default: false
    t.string   "status",        default: "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documents", ["slug"], name: "index_documents_on_slug", unique: true, using: :btree

  create_table "prompts", force: true do |t|
    t.integer  "question_id"
    t.string   "prompt_type", default: "radio"
    t.text     "content"
    t.integer  "value"
    t.boolean  "correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "screen_id"
    t.string   "name"
    t.text     "content"
    t.string   "question_type"
    t.integer  "seq"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["name"], name: "index_questions_on_name", using: :btree
  add_index "questions", ["screen_id"], name: "index_questions_on_screen_id", using: :btree

  create_table "responses", force: true do |t|
    t.integer  "user_id"
    t.integer  "surveying_id"
    t.integer  "question_id"
    t.integer  "prompt_id"
    t.text     "content"
    t.datetime "started_at"
    t.datetime "responded_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "responses", ["prompt_id"], name: "index_responses_on_prompt_id", using: :btree
  add_index "responses", ["question_id"], name: "index_responses_on_question_id", using: :btree
  add_index "responses", ["surveying_id"], name: "index_responses_on_surveying_id", using: :btree
  add_index "responses", ["user_id"], name: "index_responses_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "screens", force: true do |t|
    t.integer  "strategy_id"
    t.integer  "category_id"
    t.string   "name"
    t.string   "next_item",   default: "screen"
    t.integer  "seq"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "screens", ["category_id"], name: "index_screens_on_category_id", using: :btree
  add_index "screens", ["seq"], name: "index_screens_on_seq", using: :btree
  add_index "screens", ["strategy_id"], name: "index_screens_on_strategy_id", using: :btree

  create_table "strategies", force: true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveyings", force: true do |t|
    t.integer  "user_id"
    t.integer  "last_screen_id"
    t.integer  "score"
    t.text     "notes"
    t.string   "status",         default: "intro"
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "surveyings", ["last_screen_id"], name: "index_surveyings_on_last_screen_id", using: :btree
  add_index "surveyings", ["user_id"], name: "index_surveyings_on_user_id", using: :btree

  create_table "user_roles", force: true do |t|
    t.integer  "user_id"
    t.integer  "granting_user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_roles", ["granting_user_id"], name: "index_user_roles_on_granting_user_id", using: :btree
  add_index "user_roles", ["role_id"], name: "index_user_roles_on_role_id", using: :btree
  add_index "user_roles", ["user_id"], name: "index_user_roles_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar"
    t.datetime "dob"
    t.string   "gender"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "status",                 default: "active"
    t.string   "website_url"
    t.text     "bio"
    t.text     "sig"
    t.string   "ip"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string   "password_hint"
    t.string   "password_hint_response"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
