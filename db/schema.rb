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

ActiveRecord::Schema.define(version: 2019_04_10_192837) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "deals", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "path"
    t.integer "pizza_id"
    t.integer "deal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id"], name: "index_images_on_deal_id"
    t.index ["pizza_id"], name: "index_images_on_pizza_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantity"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "subtotal", precision: 12, scale: 3
    t.decimal "tax", precision: 12, scale: 3
    t.decimal "shipping", precision: 12, scale: 3
    t.string "stripe_charge_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "about_details"
    t.string "contact_details"
    t.string "contact_phone"
    t.string "contact_address"
    t.string "contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pizza_deals", force: :cascade do |t|
    t.integer "pizza_id"
    t.integer "deal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id"], name: "index_pizza_deals_on_deal_id"
    t.index ["pizza_id"], name: "index_pizza_deals_on_pizza_id"
  end

  create_table "pizza_orders", force: :cascade do |t|
    t.integer "pizza_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "unit_price", precision: 12, scale: 3
    t.integer "quantity"
    t.decimal "total_price", precision: 12, scale: 3
    t.index ["order_id"], name: "index_pizza_orders_on_order_id"
    t.index ["pizza_id"], name: "index_pizza_orders_on_pizza_id"
  end

  create_table "pizza_toppings", force: :cascade do |t|
    t.integer "pizza_id"
    t.integer "topping_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pizza_id"], name: "index_pizza_toppings_on_pizza_id"
    t.index ["topping_id"], name: "index_pizza_toppings_on_topping_id"
  end

  create_table "pizzas", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.decimal "price", precision: 12, scale: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.decimal "pst", precision: 12, scale: 3
    t.decimal "gst", precision: 12, scale: 3
    t.decimal "hst", precision: 12, scale: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.string "allergy_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "province_id"
    t.string "address"
    t.string "stripe_user_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["province_id"], name: "index_users_on_province_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
