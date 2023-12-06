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

ActiveRecord::Schema[7.1].define(version: 2023_12_06_211820) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_actors", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.bigint "actor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_movie_actors_on_actor_id"
    t.index ["movie_id"], name: "index_movie_actors_on_movie_id"
  end

  create_table "movie_directors", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.bigint "director_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["director_id"], name: "index_movie_directors_on_director_id"
    t.index ["movie_id"], name: "index_movie_directors_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.text "synopsis"
    t.string "category"
    t.string "poster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "notif_title"
    t.string "content"
    t.bigint "user_id", null: false
    t.bigint "save_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["save_item_id"], name: "index_notifications_on_save_item_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.bigint "save_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["save_item_id"], name: "index_reviews_on_save_item_id"
  end

  create_table "save_items", force: :cascade do |t|
    t.integer "api_movie_id"
    t.boolean "history", default: false
    t.boolean "marked", default: false
    t.string "title"
    t.string "poster"
    t.integer "year"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.text "comment"
    t.index ["user_id"], name: "index_save_items_on_user_id"
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

  add_foreign_key "movie_actors", "actors"
  add_foreign_key "movie_actors", "movies"
  add_foreign_key "movie_directors", "directors"
  add_foreign_key "movie_directors", "movies"
  add_foreign_key "notifications", "save_items"
  add_foreign_key "notifications", "users"
  add_foreign_key "reviews", "save_items"
  add_foreign_key "save_items", "users"
end
