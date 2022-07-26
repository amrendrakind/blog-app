require 'rails_helper'

RSpec.describe 'User post index page', type: :system do
  before(:all) do
    @first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',bio: 'Teacher from Mexico.', post_counter: 0)

    @first_post = Post.create(author_id: @first_user.id, title: 'Hello', text: 'This is my first post',comments_counter: 0, likes_counter: 0)
    @first_comment = Comment.create(post_id: @first_post.id, author_id: @first_user.id,text: 'This is my first comment')
  end

  it "I can see the post's title." do
    visit "/users/#{@first_user.id}/posts/#{@first_post.id}"
    expect(page).to have_content(@first_post.title)
  end

end
