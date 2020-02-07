# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_07_184634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_albums_on_user_id"
  end

  create_table "albums_photos", force: :cascade do |t|
    t.bigint "album_id", null: false
    t.bigint "photo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_albums_photos_on_album_id"
    t.index ["photo_id"], name: "index_albums_photos_on_photo_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "description"
    t.string "tags", default: [], array: true
    t.string "people", default: [], array: true
    t.string "location"
    t.string "size"
    t.datetime "time"
    t.string "filename"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "bio"
    t.string "fullname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "albums", "users"
  add_foreign_key "albums_photos", "albums"
  add_foreign_key "albums_photos", "photos"
  add_foreign_key "photos", "users"
end
