require 'rails_helper'

RSpec.describe 'User post show page', type: :system do
  before(:all) do
    @first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',bio: 'Teacher from Mexico.', post_counter: 0)

    @first_post = Post.create(author_id: @first_user.id, title: 'Hello', text: 'This is my first post',comments_counter: 0, likes_counter: 0)
    @first_comment = Comment.create(post_id: @first_post.id, author_id: @first_user.id,text: 'This is my first comment')
    @first_like= Like.create(post_id: @first_post.id, author_id: @first_user.id)
  end

  it "I can see the post's title." do
    visit "/users/#{@first_user.id}/posts/#{@first_post.id}"
    expect(page).to have_content(@first_post.title)
  end

  it "I can see who wrote the post." do
    visit "/users/#{@first_user.id}/posts/#{@first_post.id}"
    expect(page).to have_content(@first_user.name)
  end

  it "I can see how many comments it has." do
    visit "/users/#{@first_user.id}/posts/#{@first_post.id}"
    expect(page).to have_content ('1')
  end

  it "I can see how many likes it has." do
    visit "/users/#{@first_user.id}/posts/#{@first_post.id}"
    expect(page).to have_content ('1')
  end
  
  
end
