require 'rails_helper'

RSpec.describe 'User index page', type: :system do
  before(:all) do
    User.destroy_all
    @first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                              bio: 'Teacher from Mexico.', post_counter: 0)
  end
  it 'I can see the username of all other users' do
    visit "/users/#{@first_user.id}"
    expect(page).to have_content('Tom')
  end

  it 'I can see the profile picture for each user.' do
    visit "/users/#{@first_user.id}"
    expect(page).to have_css("img[src*='https://unsplash.com/photos/F_-0BxGuVvo']")
  end

  it 'I can see the number of posts each user has written.' do
    first_post = Post.create(author_id: @first_user.id, title: 'Hello', text: 'This is my first post',
                             comments_counter: 0, likes_counter: 0)
    first_post.update_posts_counter
    visit "/users/#{@first_user.id}"
    expect(page).to have_content('Number of posts: 1')
  end

  it "When I click on a user, I am redirected to that user's show page." do
    first_post = Post.create(author_id: @first_user.id, title: 'Hello', text: 'This is my first post',
                             comments_counter: 0, likes_counter: 0)
    first_post.update_posts_counter
    visit '/users/'
    click_link('Tom')
    expect(page).to have_content('Teacher from Mexico.')
  end
end
