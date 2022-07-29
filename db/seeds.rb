# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# #Create at least one user by running the following code:
# require 'json'

# first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.', post_counter: 0)
# second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.', post_counter: 0)

# #Create at least 4 posts written by one of the users you created by running the following code:

# first_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# second_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my second post', comments_counter: 0, likes_counter: 0)
# third_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my third post', comments_counter: 0, likes_counter: 0)
# fourth_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my fourth post', comments_counter: 0, likes_counter: 0)

# fifth_post = Post.create(author_id: second_user.id, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
# sixth_post = Post.create(author_id: second_user.id, title: 'Hello', text: 'This is my second post', comments_counter: 0, likes_counter: 0)
# seventh_post = Post.create(author_id: second_user.id, title: 'Hello', text: 'This is my third post', comments_counter: 0, likes_counter: 0)
# eighth_post = Post.create(author_id: second_user.id, title: 'Hello', text: 'This is my fourth post', comments_counter: 0, likes_counter: 0)

# #Create at least 6 posts comments for one of the posts you created by running the following code:

# first_comment = Comment.create(post_id: fourth_post.id, author_id: first_user.id, text: 'Hi Tom!, This is my first comment' )
# Comment.create(post_id: fourth_post.id, author_id: second_user.id, text: 'Hi Tom!, This is my second comment' )
# Comment.create(post_id: fourth_post.id, author_id: first_user.id, text: 'Hi Tom!, This is my third comment' )
# Comment.create(post_id: fourth_post.id, author_id: second_user.id, text: 'Hi Tom!, This is my fourth comment' )
# Comment.create(post_id: fourth_post.id, author_id: first_user.id, text: 'Hi Tom!, This is my fifth comment' )
# Comment.create(post_id: fourth_post.id, author_id: second_user.id, text: 'Hi Tom!, This is my sixth comment' )

# second_comment = Comment.create(post_id: eighth_post.id, author_id: first_user.id, text: 'Hi Lilly!, This is my first comment' )
# Comment.create(post_id: eighth_post.id, author_id: second_user.id, text: 'Hi Lilly!, This is my second comment' )
# Comment.create(post_id: eighth_post.id, author_id: first_user.id, text: 'Hi Lilly!, This is my third comment' )
# Comment.create(post_id: eighth_post.id, author_id: second_user.id, text: 'Hi Lilly!, This is my fourth comment' )
# Comment.create(post_id: eighth_post.id, author_id: first_user.id, text: 'Hi Lilly!, This is my fifth comment' )
# Comment.create(post_id: eighth_post.id, author_id: second_user.id, text: 'Hi Lilly!, This is my sixth comment' )

# #Create at least 4 likes by you created by running the following code:

# first_like= Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: third_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: fifth_post.id, author_id: second_user.id)
# Like.create(post_id: sixth_post.id, author_id: first_user.id)
# Like.create(post_id: seventh_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: third_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: fifth_post.id, author_id: second_user.id)
# Like.create(post_id: sixth_post.id, author_id: first_user.id)
# Like.create(post_id: seventh_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: third_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: fifth_post.id, author_id: second_user.id)
# Like.create(post_id: sixth_post.id, author_id: first_user.id)
# Like.create(post_id: seventh_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: third_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: fifth_post.id, author_id: second_user.id)
# Like.create(post_id: sixth_post.id, author_id: first_user.id)
# Like.create(post_id: seventh_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: third_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: fifth_post.id, author_id: second_user.id)
# Like.create(post_id: sixth_post.id, author_id: first_user.id)
# Like.create(post_id: seventh_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)

# second_like= Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: second_user.id)
# Like.create(post_id: sixth_post.id, author_id: first_user.id)
# Like.create(post_id: first_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: fifth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: seventh_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: third_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: fifth_post.id, author_id: second_user.id)
# Like.create(post_id: sixth_post.id, author_id: first_user.id)
# Like.create(post_id: seventh_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: third_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: fifth_post.id, author_id: second_user.id)
# Like.create(post_id: sixth_post.id, author_id: first_user.id)
# Like.create(post_id: seventh_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)
# Like.create(post_id: first_post.id, author_id: first_user.id)
# Like.create(post_id: second_post.id, author_id: second_user.id)
# Like.create(post_id: third_post.id, author_id: first_user.id)
# Like.create(post_id: fourth_post.id, author_id: second_user.id)
# Like.create(post_id: fifth_post.id, author_id: second_user.id)
# Like.create(post_id: sixth_post.id, author_id: first_user.id)
# Like.create(post_id: seventh_post.id, author_id: second_user.id)
# Like.create(post_id: eighth_post.id, author_id: second_user.id)
# #Output

# puts
# puts('Recent posts:')
# puts(first_user.recent_posts.to_json)
# puts
# puts('Recent comments:')
# puts(first_post.recent_comments.to_json)

# first_post.update_posts_counter
# puts
# puts('Post counter: ')
# puts(first_post.author.post_counter)

# first_comment.update_comments_counter
# puts('Comments counter: ')
# puts(first_comment.post.comments_counter)

# first_like.update_likes_counter
# puts('likes counter: ')
# puts(first_like.post.likes_counter)

# puts
# puts('Recent posts:')
# puts(second_user.recent_posts.to_json)
# puts
# puts('Recent comments:')
# puts(fifth_post.recent_comments.to_json)

# fifth_post.update_posts_counter
# puts
# puts('Post counter: ')
# puts(fifth_post.author.post_counter)

# second_comment.update_comments_counter
# puts('Comments counter: ')
# puts(second_comment.post.comments_counter)

# second_like.update_likes_counter
# puts('likes counter: ')
# puts(second_like.post.likes_counter)
