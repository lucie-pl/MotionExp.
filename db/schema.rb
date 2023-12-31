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

ActiveRecord::Schema[7.1].define(version: 2023_12_13_215503) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "first_user_id", null: false
    t.bigint "second_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_user_id"], name: "index_friendships_on_first_user_id"
    t.index ["second_user_id"], name: "index_friendships_on_second_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "friendship_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friendship_id"], name: "index_messages_on_friendship_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.text "synopsis"
    t.string "category"
    t.string "poster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "actors"
    t.string "directors"
    t.text "trailer_url"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "notif_title"
    t.string "content"
    t.bigint "user_id", null: false
    t.bigint "save_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "seen", default: false, null: false
    t.index ["save_item_id"], name: "index_notifications_on_save_item_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "save_items", force: :cascade do |t|
    t.boolean "history", default: false
    t.boolean "marked", default: false
    t.string "title"
    t.string "poster"
    t.integer "year"
    t.bigint "user_id", null: false
    t.bigint "api_movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating", default: 0, null: false
    t.index ["api_movie_id"], name: "index_save_items_on_api_movie_id"
    t.index ["user_id"], name: "index_save_items_on_user_id"
  end

  create_table "screening_times", force: :cascade do |t|
    t.string "date"
    t.string "hour"
    t.string "version"
    t.bigint "movie_id", null: false
    t.bigint "cinema_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_screening_times_on_cinema_id"
    t.index ["movie_id"], name: "index_screening_times_on_movie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "friendships", "users", column: "first_user_id"
  add_foreign_key "friendships", "users", column: "second_user_id"
  add_foreign_key "messages", "friendships"
  add_foreign_key "messages", "users"
  add_foreign_key "notifications", "save_items"
  add_foreign_key "notifications", "users"
  add_foreign_key "save_items", "movies", column: "api_movie_id"
  add_foreign_key "save_items", "users"
  add_foreign_key "screening_times", "cinemas"
  add_foreign_key "screening_times", "movies"
end
