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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130104234922) do

  create_table "competencies", :force => true do |t|
    t.string   "competency_name"
    t.integer  "competency_value"
    t.integer  "competency_cpv"
    t.string   "job_title"
    t.string   "department"
    t.integer  "office"
    t.integer  "position_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "competency_type"
  end

  add_index "competencies", ["position_id"], :name => "index_competencies_on_position_id"

  create_table "offices", :force => true do |t|
    t.string   "office_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "positions", :force => true do |t|
    t.string   "job_title"
    t.integer  "office"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.date     "valid_from"
    t.integer  "job_grade"
    t.string   "reports_to"
    t.string   "line_manages"
    t.text     "overall_purpose"
    t.text     "scope"
    t.text     "specific_work_env"
    t.text     "conceptual"
    t.text     "implementation"
    t.text     "support"
    t.decimal  "fte"
    t.string   "name"
    t.date     "birth_date"
    t.integer  "gender"
    t.integer  "nationality"
    t.integer  "res_status"
    t.date     "start_date"
    t.integer  "type_contract"
    t.integer  "unique_position"
    t.integer  "permanent"
    t.string   "department"
    t.date     "next_performance_talk"
    t.string   "favorite_color"
    t.integer  "age"
    t.string   "attitude1"
    t.string   "attitude2"
    t.string   "attitude3"
    t.string   "attitude4"
    t.string   "attitude5"
  end

  create_table "tweets", :force => true do |t|
    t.integer  "position_id"
    t.string   "tweeter"
    t.text     "body"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "tweet_office"
    t.string   "tweet_position"
    t.string   "tweet_name"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.integer  "user_office"
    t.string   "user_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
