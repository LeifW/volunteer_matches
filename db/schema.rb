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

ActiveRecord::Schema.define(:version => 20100512203640) do

  create_table "availabilities", :force => true do |t|
  end

  create_table "availabilities_people", :id => false, :force => true do |t|
    t.integer "availability_id"
    t.integer "person_id"
  end

  add_index "availabilities_people", ["availability_id"], :name => "index_availabilities_people_on_availability_id"
  add_index "availabilities_people", ["person_id"], :name => "index_availabilities_people_on_person_id"

  create_table "contacts", :force => true do |t|
    t.string   "content"
    t.string   "type"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

end
