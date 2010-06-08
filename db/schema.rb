# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100603024343) do

  create_table "availabilities", :force => true do |t|
    t.integer  "person_id"
    t.integer  "timeslot_id"
    t.integer  "match_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_methods", :force => true do |t|
    t.string   "name"
    t.integer  "match_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_methods_matches", :id => false, :force => true do |t|
    t.integer "contact_method_id"
    t.integer "match_id"
  end

  add_index "contact_methods_matches", ["contact_method_id", "match_id"], :name => "index_contact_methods_matches_on_contact_method_id_and_match_id"

  create_table "contacts", :force => true do |t|
    t.string   "content"
    t.string   "type"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", :force => true do |t|
    t.integer  "student_id"
    t.integer  "volunteer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_date"
    t.datetime "contact_date"
  end

  create_table "people", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.boolean  "male"
    t.text     "address"
    t.boolean  "contact_permission"
    t.integer  "weekly_hours"
    t.text     "comments"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "native_speaker"
    t.string   "native_language"
    t.string   "nickname"
  end

  create_table "service_learnings", :force => true do |t|
    t.string   "class_name"
    t.string   "instructor"
    t.integer  "hours"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timeslots", :force => true do |t|
  end

end
