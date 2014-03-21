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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140321154948) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.datetime "release_date"
    t.string   "genre"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "image_path"
    t.integer  "artist_id"
  end

  create_table "albums_features", :id => false, :force => true do |t|
    t.integer "album_id"
    t.integer "feature_id"
  end

  add_index "albums_features", ["album_id", "feature_id"], :name => "albums_features_index", :unique => true

  create_table "albums_orders", :id => false, :force => true do |t|
    t.integer "album_id"
    t.integer "order_id"
  end

  add_index "albums_orders", ["album_id", "order_id"], :name => "albums_orders_index", :unique => true

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.string   "active_years"
    t.text     "biography"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "features", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "album_id"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "invoice_number"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
