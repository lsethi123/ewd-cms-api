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

ActiveRecord::Schema.define(version: 20150811223853) do

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

  create_table "boards", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "boards", ["team_id"], name: "index_boards_on_team_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_products", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "category_products", ["category_id"], name: "index_category_products_on_category_id", using: :btree
  add_index "category_products", ["product_id"], name: "index_category_products_on_product_id", using: :btree

  create_table "checklists", force: :cascade do |t|
    t.integer  "step"
    t.text     "description"
    t.integer  "todo_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "checklists", ["todo_id"], name: "index_checklists_on_todo_id", using: :btree

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

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "image_products", force: :cascade do |t|
    t.integer  "image_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "image_products", ["image_id"], name: "index_image_products_on_image_id", using: :btree
  add_index "image_products", ["product_id"], name: "index_image_products_on_product_id", using: :btree

  create_table "image_sliders", force: :cascade do |t|
    t.integer  "image_id"
    t.integer  "slider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "image_sliders", ["image_id"], name: "index_image_sliders_on_image_id", using: :btree
  add_index "image_sliders", ["slider_id"], name: "index_image_sliders_on_slider_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "images_pages", force: :cascade do |t|
    t.integer "image_id"
    t.integer "page_id"
  end

  add_index "images_pages", ["image_id"], name: "index_images_pages_on_image_id", using: :btree
  add_index "images_pages", ["page_id"], name: "index_images_pages_on_page_id", using: :btree

  create_table "images_sliders", force: :cascade do |t|
    t.integer "image_id"
    t.integer "slider_id"
  end

  add_index "images_sliders", ["image_id"], name: "index_images_sliders_on_image_id", using: :btree
  add_index "images_sliders", ["slider_id"], name: "index_images_sliders_on_slider_id", using: :btree

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

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.boolean  "published"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.boolean  "in_stock"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
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

  create_table "sliders", force: :cascade do |t|
    t.boolean  "accessibility"
    t.boolean  "adaptive_height"
    t.boolean  "autoplay"
    t.integer  "autoplay_speed"
    t.boolean  "arrows"
    t.string   "as_nav_for"
    t.string   "append_arrows"
    t.string   "prev_arrow"
    t.string   "next_arrow"
    t.boolean  "center_mode"
    t.string   "center_padding"
    t.string   "css_ease"
    t.boolean  "dots"
    t.boolean  "draggable"
    t.boolean  "fade"
    t.boolean  "focus_on_select"
    t.string   "easing"
    t.integer  "edge_friction"
    t.boolean  "infinite"
    t.integer  "initial_slide"
    t.string   "lazy_load"
    t.boolean  "mobile_first"
    t.boolean  "pause_on_hover"
    t.boolean  "pause_on_dots_hover"
    t.integer  "rows"
    t.string   "slide"
    t.integer  "slides_per_row"
    t.integer  "slides_to_show"
    t.integer  "slides_to_scroll"
    t.integer  "speed"
    t.boolean  "swipe"
    t.boolean  "swipe_to_slide"
    t.boolean  "touch_move"
    t.integer  "touch_threshold"
    t.boolean  "use_css"
    t.boolean  "variable_width"
    t.boolean  "vertical"
    t.boolean  "vertical_swiping"
    t.boolean  "rtl"
    t.integer  "page_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "sliders", ["page_id"], name: "index_sliders_on_page_id", using: :btree

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

  create_table "todos", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "todos", ["board_id"], name: "index_todos_on_board_id", using: :btree
  add_index "todos", ["user_id"], name: "index_todos_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "token"
    t.integer  "team_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["team_id"], name: "index_users_on_team_id", using: :btree

  add_foreign_key "billing_addresses", "orders"
  add_foreign_key "boards", "teams"
  add_foreign_key "category_products", "categories"
  add_foreign_key "category_products", "products"
  add_foreign_key "checklists", "todos"
  add_foreign_key "companies", "teams"
  add_foreign_key "employees", "companies"
  add_foreign_key "image_products", "images"
  add_foreign_key "image_products", "products"
  add_foreign_key "image_sliders", "images"
  add_foreign_key "image_sliders", "sliders"
  add_foreign_key "images_pages", "images"
  add_foreign_key "images_pages", "pages"
  add_foreign_key "images_sliders", "images"
  add_foreign_key "images_sliders", "sliders"
  add_foreign_key "line_items", "orders"
  add_foreign_key "line_items", "products"
  add_foreign_key "opportunities", "companies"
  add_foreign_key "orders", "users"
  add_foreign_key "shipping_addresses", "orders"
  add_foreign_key "sliders", "pages"
  add_foreign_key "tag_posts", "posts"
  add_foreign_key "tag_posts", "tags"
  add_foreign_key "tasks", "companies"
  add_foreign_key "tasks", "employees"
  add_foreign_key "tasks", "users"
  add_foreign_key "todos", "boards"
  add_foreign_key "todos", "users"
  add_foreign_key "users", "teams"
end
