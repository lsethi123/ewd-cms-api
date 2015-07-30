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

ActiveRecord::Schema.define(version: 20150729193334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billing_addresses", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "postal_code"
    t.string   "country"
    t.string   "region"
    t.integer  "order_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "billing_addresses", ["order_id"], name: "index_billing_addresses_on_order_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.string   "email"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "companies", ["team_id"], name: "index_companies_on_team_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "role"
    t.string   "title"
    t.string   "phone"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employees", ["company_id"], name: "index_employees_on_company_id", using: :btree

  create_table "line_items", force: :cascade do |t|
    t.float    "price"
    t.integer  "quantity"
    t.integer  "order_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree
  add_index "line_items", ["product_id"], name: "index_line_items_on_product_id", using: :btree

  create_table "opportunities", force: :cascade do |t|
    t.string   "title"
    t.string   "stage"
    t.datetime "estimated_close"
    t.string   "estimated_amount"
    t.integer  "company_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "opportunities", ["company_id"], name: "index_opportunities_on_company_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "number"
    t.float    "total"
    t.string   "state"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.boolean  "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.boolean  "in_stock"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "postal_code"
    t.string   "country"
    t.string   "region"
    t.integer  "order_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shipping_addresses", ["order_id"], name: "index_shipping_addresses_on_order_id", using: :btree

  create_table "tag_posts", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tag_posts", ["post_id"], name: "index_tag_posts_on_post_id", using: :btree
  add_index "tag_posts", ["tag_id"], name: "index_tag_posts_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "due_date"
    t.integer  "employee_id"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["company_id"], name: "index_tasks_on_company_id", using: :btree
  add_index "tasks", ["employee_id"], name: "index_tasks_on_employee_id", using: :btree
  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "token"
    t.integer  "team_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["team_id"], name: "index_users_on_team_id", using: :btree

  add_foreign_key "billing_addresses", "orders"
  add_foreign_key "companies", "teams"
  add_foreign_key "employees", "companies"
  add_foreign_key "line_items", "orders"
  add_foreign_key "line_items", "products"
  add_foreign_key "opportunities", "companies"
  add_foreign_key "orders", "users"
  add_foreign_key "shipping_addresses", "orders"
  add_foreign_key "tag_posts", "posts"
  add_foreign_key "tag_posts", "tags"
  add_foreign_key "tasks", "companies"
  add_foreign_key "tasks", "employees"
  add_foreign_key "tasks", "users"
  add_foreign_key "users", "teams"
end
