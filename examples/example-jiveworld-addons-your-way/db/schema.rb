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

ActiveRecord::Schema.define(version: 20160226041936) do

  create_table "jive_add_ons", force: :cascade do |t|
    t.string   "name"
    t.string   "tenant_id"
    t.string   "client_id"
    t.string   "client_secret"
    t.string   "jive_signature"
    t.string   "jive_signature_url"
    t.string   "jive_url"
    t.string   "timestamp"
    t.boolean  "uninstalled"
    t.integer  "attempt"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "jive_oauth_tokens", force: :cascade do |t|
    t.integer  "jive_add_on_id"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "scope"
    t.string   "token_type"
    t.integer  "expires_in"
    t.datetime "expires_at"
    t.string   "refresh_token"
    t.string   "access_token"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "jive_tiles", force: :cascade do |t|
    t.integer  "jive_add_on_id"
    t.integer  "tile_id"
    t.string   "code"
    t.text     "config"
    t.string   "guid"
    t.string   "jive_url"
    t.string   "name"
    t.string   "parent"
    t.string   "place_uri"
    t.string   "tenant_id"
    t.string   "url"
    t.string   "remote_id"
    t.string   "push_url"
    t.boolean  "uninstalled"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "jive_webhooks", force: :cascade do |t|
    t.integer  "jive_add_on_id"
    t.integer  "jive_oauth_token_id"
    t.integer  "webhook_id"
    t.string   "events"
    t.string   "object"
    t.string   "callback"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
