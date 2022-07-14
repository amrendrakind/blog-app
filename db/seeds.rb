# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Create at least one user by running the following code:

first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

#Create at least 4 posts written by one of the users you created by running the following code:

first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: second_user, title: 'Hello', text: 'This is my second post')
third_post = Post.create(author: first_user, title: 'Hello', text: 'This is my third post')
fourth_post = Post.create(author: second_user, title: 'Hello', text: 'This is my fourth post')

#Create at least 6 posts comments for one of the posts you created by running the following code:

Comment.create(post: first_post, author: first_user, text: 'Hi Tom!, This is my first comment' )
Comment.create(post: second_post, author: second_user, text: 'Hi Tom!, This is my second comment' )
Comment.create(post: third_post, author: first_user, text: 'Hi Tom!, This is my third comment' )
Comment.create(post: fourth_post, author: second_user, text: 'Hi Tom!, This is my fourth comment' )
Comment.create(post: first_post, author: first_user, text: 'Hi Tom!, This is my fifth comment' )
Comment.create(post: second_post, author: second_user, text: 'Hi Tom!, This is my sixth comment' )

#Create at least 4 likes by you created by running the following code:

first_like= Like.create(post: first_post, author: first_user)
second_like= Like.create(post: second_post, author: second_user)
third_like= Like.create(post: third_post, author: first_user)
fourth_like= Like.create(post: fourth_post, author: second_user)
