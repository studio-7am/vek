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

ActiveRecord::Schema.define(version: 20160120201116) do

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "lombard_orders", force: :cascade do |t|
    t.string   "number"
    t.string   "slug"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.integer  "lombard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lombard_orders", ["lombard_id"], name: "index_lombard_orders_on_lombard_id"

  create_table "lombard_tabs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "icon"
    t.integer  "lombard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lombard_tabs", ["lombard_id"], name: "index_lombard_tabs_on_lombard_id"

  create_table "lombards", force: :cascade do |t|
    t.string   "name",        default: "Ломбард"
    t.string   "description", default: "Описание ломбарда"
    t.string   "content",     default: "Контент в ломбарде"
    t.string   "image",       default: "/lombard.jpg"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "number"
    t.string   "slug"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "other"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["page_id"], name: "index_orders_on_page_id"

  create_table "pages", force: :cascade do |t|
    t.string   "title",       default: "Заголовок страницы"
    t.string   "description", default: "Описание страницы"
    t.text     "content",     default: "Контент на странице"
    t.boolean  "publish",     default: true
    t.string   "cover",       default: "/sample.jpg"
    t.string   "icon",        default: "fa fa-page"
    t.string   "bg",          default: "#fafafa"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.string   "image"
    t.integer  "lombard_order_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "products", ["lombard_order_id"], name: "index_products_on_lombard_order_id"

  create_table "redactor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], name: "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_redactor_assetable_type"

  create_table "socials", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_orders", force: :cascade do |t|
    t.string   "number"
    t.string   "slug"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "store_orders", ["product_id"], name: "index_store_orders_on_product_id"

  create_table "store_tabs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "icon"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "store_tabs", ["store_id"], name: "index_store_tabs_on_store_id"

  create_table "stores", force: :cascade do |t|
    t.string   "name",        default: "Магазин"
    t.string   "description", default: "Описание магазина"
    t.string   "content",     default: "Контент в магазине"
    t.string   "image",       default: "/store.jpg"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "tabs", force: :cascade do |t|
    t.string   "title",      default: "Таб на странице"
    t.text     "content",    default: "Контент"
    t.integer  "page_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "tabs", ["page_id"], name: "index_tabs_on_page_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
