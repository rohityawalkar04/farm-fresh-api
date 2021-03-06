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

ActiveRecord::Schema.define(version: 2021_07_25_112633) do

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "receiver_name"
    t.bigint "product_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "product_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "name"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "product_category_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile_number"
    t.string "password"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "products"
  add_foreign_key "products", "product_categories"
end
