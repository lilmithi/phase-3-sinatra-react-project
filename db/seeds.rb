puts "🌱 Seeding spices..."

# Seed your database here
6.times do
    comment=Comment.create(
        body: Faker::Lorem.sentence
    )

    user=User.create(
        user_name: Faker::Name.name,
        comment_id: comment.id,
        followers: rand(1..50000),
        following: rand(1..40500)
    )


    Post.create(
        post_url: "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/WOPA160517_D056-resized.jpg?crop=864%2C0%2C1728%2C2304&wid=600&hei=800&scl=2.88",
        likes: rand(0..560),
        comment_id: comment.id,
        user_id:user.id
    )

end
puts "✅ Done seeding!"
