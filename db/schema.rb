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

ActiveRecord::Schema.define(:version => 20150719020630) do

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.string   "image"
    t.integer  "bytes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "imageURL"
    t.string   "picture"
    t.string   "image"
  end

  add_index "products", ["user_id"], :name => "index_products_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",                    :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     :limit => nil
    t.string   "last_sign_in_ip",        :limit => nil
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["product_id"], :name => "index_users_on_product_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "usuarios", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",                    :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     :limit => nil
    t.string   "last_sign_in_ip",        :limit => nil
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
