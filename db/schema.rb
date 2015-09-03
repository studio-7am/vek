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

ActiveRecord::Schema.define(version: 20150903111922) do

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
