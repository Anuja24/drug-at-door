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

ActiveRecord::Schema.define(version: 20180414070143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_types", force: :cascade do |t|
    t.string "type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.text "full_address"
    t.string "land_mark"
    t.integer "pincode"
    t.string "mobile_no"
    t.string "city"
    t.string "state"
    t.bigint "user_id"
    t.bigint "customer_id"
    t.bigint "address_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_type_id"], name: "index_addresses_on_address_type_id"
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "availables", force: :cascade do |t|
    t.string "available_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.string "company_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "composition_products", force: :cascade do |t|
    t.bigint "composition_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["composition_id"], name: "index_composition_products_on_composition_id"
    t.index ["product_id"], name: "index_composition_products_on_product_id"
  end

  create_table "compositions", force: :cascade do |t|
    t.string "Composition_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_no"
    t.string "email_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "discount_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.decimal "unit_price"
    t.integer "quantity"
    t.decimal "total_price"
    t.bigint "product_id"
    t.bigint "order_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "item_price", precision: 12, scale: 3
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
    t.index ["user_id"], name: "index_order_items_on_user_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "subtotal"
    t.decimal "total_discount"
    t.decimal "shipping_charges"
    t.decimal "tax"
    t.decimal "final_payment"
    t.bigint "order_status_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id"
    t.string "order_number"
    t.date "purchased_at"
    t.string "card_holder_name"
    t.index ["address_id"], name: "index_orders_on_address_id"
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "packs", force: :cascade do |t|
    t.string "pack_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prec_requires", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_forms", force: :cascade do |t|
    t.string "form_name"
    t.string "form_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.decimal "product_price"
    t.string "product_unit"
    t.text "product_information"
    t.bigint "section_type_id"
    t.bigint "section_id"
    t.bigint "company_id"
    t.bigint "product_form_id"
    t.bigint "pack_id"
    t.bigint "discount_id"
    t.bigint "available_id"
    t.bigint "prec_require_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "unit_id"
    t.string "unit_qty"
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.integer "photo_file_size"
    t.datetime "photo_updated_at"
    t.decimal "discount_price"
    t.index ["available_id"], name: "index_products_on_available_id"
    t.index ["company_id"], name: "index_products_on_company_id"
    t.index ["discount_id"], name: "index_products_on_discount_id"
    t.index ["pack_id"], name: "index_products_on_pack_id"
    t.index ["prec_require_id"], name: "index_products_on_prec_require_id"
    t.index ["product_form_id"], name: "index_products_on_product_form_id"
    t.index ["section_id"], name: "index_products_on_section_id"
    t.index ["section_type_id"], name: "index_products_on_section_type_id"
    t.index ["unit_id"], name: "index_products_on_unit_id"
  end

  create_table "section_types", force: :cascade do |t|
    t.string "section_type_name"
    t.string "section_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "section_name"
    t.string "section_description"
    t.bigint "section_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_type_id"], name: "index_sections_on_section_type_id"
  end

  create_table "super_admins", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_no"
    t.string "email_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_super_admins_on_user_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_number"
    t.string "password"
    t.string "role"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "address_types"
  add_foreign_key "addresses", "customers"
  add_foreign_key "addresses", "users"
  add_foreign_key "composition_products", "compositions"
  add_foreign_key "composition_products", "products"
  add_foreign_key "customers", "users"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "order_items", "users"
  add_foreign_key "orders", "addresses"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "availables"
  add_foreign_key "products", "companies"
  add_foreign_key "products", "discounts"
  add_foreign_key "products", "packs"
  add_foreign_key "products", "prec_requires"
  add_foreign_key "products", "product_forms"
  add_foreign_key "products", "section_types"
  add_foreign_key "products", "sections"
  add_foreign_key "products", "units"
  add_foreign_key "sections", "section_types"
  add_foreign_key "super_admins", "users"
end
