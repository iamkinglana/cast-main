# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require 'faker'

# # Create users
# 10.times do
#   User.create(
#     username: Faker::Internet.unique.username(specifier: 5..10),
#     email: Faker::Internet.unique.email,
#     encrypted_password: 'password'
#   )
# end

# # Create casts
# # Create casts
# User.all.each do |user|
#   rand(1..5).times do
#     Cast.create(
#       content: Faker::Lorem.paragraph,
#       user_id: user.id
#     )
#   end
# end


# # Create comments
# User.all.each do |user|
#   Cast.all.each do |cast|
#     rand(0..3).times do
#       cast.comments.create(
#         content: Faker::Lorem.sentence,
#         user_id: user.id
#       )
#     end
#   end
# end

# # Create follows
# User.all.each do |user|
#   following_users = User.where.not(id: user.id).sample(rand(0..5))
#   following_users.each do |followed_user|
#     Follow.create(follower_id: user.id, followed_id: followed_user.id)
#   end
# end


# # Create likes
# User.all.each do |user|
#   liked_casts = Cast.all.sample(rand(0..5))
#   liked_casts.each do |cast|
#     Like.create(user_id: user.id, cast_id: cast.id)
#   end
# end
