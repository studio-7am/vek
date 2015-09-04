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

ActiveRecord::Schema.define(version: 20150904122613) do

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

  create_table "tabs", force: :cascade do |t|
    t.string   "title",      default: "Таб на странице"
    t.text     "content",    default: "Контент"
    t.integer  "page_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "tabs", ["page_id"], name: "index_tabs_on_page_id"

end
