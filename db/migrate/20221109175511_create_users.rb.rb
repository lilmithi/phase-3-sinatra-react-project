class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :profile_img_url, default: "https://previews.123rf.com/images/jegas/jegas1610/jegas161000451/67827303-human-head-silhouette-face-profile-view-elegant-silhouette-of-part-of-human-face-vector-illustration.jpg", null:false
      t.integer :comment_id
      t.string :followers, default: rand(1..50000),null: false
      t.string :following, default: rand(1..50000),null: false
    end
  end
end
