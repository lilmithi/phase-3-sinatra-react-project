class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :post_url
      t.integer :likes, default: rand(0..560),null:false
      t.integer :comment_id, null:false
      t.integer :user_id
    end
  end
end
