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

ActiveRecord::Schema[8.0].define(version: 2025_01_15_161501) do
  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.integer "duration", null: false
    t.string "age_rating", null: false
    t.date "release_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.string "user_name", null: false
    t.integer "rating", null: false
    t.text "review_text", null: false
    t.datetime "review_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "hall_number", null: false
    t.date "start_date", null: false
    t.time "start_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_sessions_on_movie_id"
  end

  add_foreign_key "reviews", "movies"
  add_foreign_key "sessions", "movies"
end
