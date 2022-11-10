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

ActiveRecord::Schema.define(version: 2022_11_09_175924) do

  create_table "comments", force: :cascade do |t|
    t.string "body"
  end

  create_table "posts", force: :cascade do |t|
    t.string "post_url"
    t.integer "likes", default: 21, null: false
    t.integer "comment_id", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "profile_img_url", default: "https://previews.123rf.com/images/jegas/jegas1610/jegas161000451/67827303-human-head-silhouette-face-profile-view-elegant-silhouette-of-part-of-human-face-vector-illustration.jpg", null: false
    t.integer "comment_id"
    t.string "followers", default: "34592", null: false
    t.string "following", default: "35675", null: false
  end

end
