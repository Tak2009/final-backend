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

ActiveRecord::Schema.define(version: 2019_12_10_092007) do

  create_table "latinamericas", force: :cascade do |t|
    t.string "category"
    t.integer "id_number"
    t.string "region"
    t.string "site"
    t.string "states"
    t.string "image_url"
    t.string "location"
    t.string "short_description"
    t.string "http_url"
    t.integer "index"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "latinamerica_id", null: false
    t.string "comment"
    t.integer "rating", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["latinamerica_id"], name: "index_reviews_on_latinamerica_id"
  end

  add_foreign_key "reviews", "latinamericas"
end
