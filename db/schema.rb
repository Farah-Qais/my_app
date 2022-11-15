# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_14_145303) do
  create_table "admins", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "identifier", null: false
    t.string "location", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "book2s", force: :cascade do |t|
    t.string "title", null: false
    t.string "author", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author"], name: "index_book2s_on_author"
    t.index ["title"], name: "index_book2s_on_title"
  end

  create_table "book3s", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book4s", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_books_on_email", unique: true
    t.index ["reset_password_token"], name: "index_books_on_reset_password_token", unique: true
  end

  create_table "car1s", force: :cascade do |t|
    t.string "user_id"
    t.string "type"
    t.string "vin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car2s", force: :cascade do |t|
    t.string "make", null: false
    t.string "model", null: false
    t.string "year", null: false
    t.string "vin", null: false
    t.string "color", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color"], name: "index_car2s_on_color"
    t.index ["make"], name: "index_car2s_on_make"
    t.index ["model"], name: "index_car2s_on_model"
    t.index ["vin"], name: "index_car2s_on_vin"
    t.index ["year"], name: "index_car2s_on_year"
  end

  create_table "car4s", force: :cascade do |t|
    t.string "make", null: false
    t.string "model", null: false
    t.string "year", null: false
    t.string "vin", null: false
    t.string "color", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color"], name: "index_car4s_on_color"
    t.index ["make"], name: "index_car4s_on_make"
    t.index ["model"], name: "index_car4s_on_model"
    t.index ["vin"], name: "index_car4s_on_vin"
    t.index ["year"], name: "index_car4s_on_year"
  end

  create_table "cars", force: :cascade do |t|
    t.string "user_id"
    t.string "tybe"
    t.integer "VIN"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars1s", force: :cascade do |t|
    t.string "user_id"
    t.string "type"
    t.string "vin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapter1s", force: :cascade do |t|
    t.text "body"
    t.integer "book3_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book3_id"], name: "index_chapter1s_on_book3_id"
  end

  create_table "chapter2s", force: :cascade do |t|
    t.text "body"
    t.integer "book3_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book3_id"], name: "index_chapter2s_on_book3_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.text "body"
    t.integer "book4_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book4_id"], name: "index_chapters_on_book4_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "serial", null: false
    t.string "version", null: false
    t.string "platform", null: false
    t.integer "book2_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book2_id"], name: "index_devices_on_book2_id"
    t.index ["platform"], name: "index_devices_on_platform"
    t.index ["serial"], name: "index_devices_on_serial"
    t.index ["version"], name: "index_devices_on_version"
  end

  create_table "hoses", force: :cascade do |t|
    t.string "user_id"
    t.integer "price"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "user_id"
    t.string "tybe"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user2s", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "identifier", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user3s", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_user3s_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user3s_on_reset_password_token", unique: true
  end

  create_table "user4s", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chapter1s", "book3s"
  add_foreign_key "chapter2s", "book3s"
  add_foreign_key "chapters", "book4s"
  add_foreign_key "devices", "book2s"
end
