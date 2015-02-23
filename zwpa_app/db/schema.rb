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

ActiveRecord::Schema.define(version: 20150223224507) do

  create_table "audits", force: true do |t|
    t.integer  "request_id"
    t.date     "date"
    t.string   "time_period"
    t.integer  "generator",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
  end

  create_table "customers", force: true do |t|
    t.integer  "user_id"
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.integer  "customer_id"
    t.string   "contact_firstname"
    t.string   "contact_lastname"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.text     "street_address"
    t.string   "city"
    t.string   "state"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zip_code"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "walkthroughs", force: true do |t|
    t.integer  "request_id"
    t.integer  "square_footage"
    t.integer  "num_floors"
    t.integer  "max_occupancy"
    t.integer  "other_businesses"
    t.text     "other_businesses_type"
    t.integer  "ownership"
    t.integer  "waste_disposal_contract"
    t.integer  "waste_management_cost"
    t.integer  "loading_dock"
    t.integer  "freight_elevators"
    t.integer  "storage_space"
    t.text     "storage_space_details"
    t.text     "trash_hauler"
    t.integer  "trash_hauler_contract"
    t.integer  "contract_available"
    t.integer  "annual_record"
    t.string   "waste_storage"
    t.string   "waste_containers"
    t.integer  "buy_recycled"
    t.text     "buy_recycled_details"
    t.integer  "green_cleaning_products"
    t.text     "green_cleaning_details"
    t.integer  "mandated_recycling"
    t.integer  "recycling_program"
    t.text     "recycling_details"
    t.integer  "recycling_stream"
    t.text     "recycling_stream_details"
    t.text     "discontinued_recycling"
    t.integer  "current_compost"
    t.integer  "past_compost"
    t.integer  "generate_toner_ink"
    t.integer  "recycle_toner_ink"
    t.integer  "generate_CFLs"
    t.integer  "recycle_CFLs"
    t.integer  "generate_batteries"
    t.integer  "recycle_batteries"
    t.integer  "generate_computers"
    t.integer  "recycle_computers"
    t.integer  "generate_cellphones"
    t.integer  "recycle_cellphones"
    t.integer  "generate_tvs"
    t.integer  "recycle_tvs"
    t.integer  "generate_other_corded_equipment"
    t.integer  "generate_furniture"
    t.integer  "recycle_furniture"
    t.integer  "generate_linens_uniforms"
    t.integer  "recycle_linens_uniforms"
    t.integer  "generate_construction_debris"
    t.integer  "recycle_construction_debris"
    t.integer  "generate_pallets"
    t.integer  "recycle_pallets"
    t.integer  "ZW_policy"
    t.integer  "LEED"
    t.integer  "recertify_LEED"
    t.integer  "requesting_audit_services"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wastes", force: true do |t|
    t.integer  "audit_id"
    t.text     "note"
    t.float    "weight"
    t.string   "material_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "origin"
  end

end
