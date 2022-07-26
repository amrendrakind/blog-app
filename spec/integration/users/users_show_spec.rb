require 'rails_helper'

RSpec.describe 'User index page', type: :system do
  before(:all) do
    User.destroy_all
    @first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                              bio: 'Teacher from Mexico.', post_counter: 0)
    @second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', 
                              bio: 'Teacher from Poland.', post_counter: 0)
  end

  it 'I can see the users profile picture.' do
    visit "/users/#{@first_user.id}"
    expect(page).to have_css("img[src*='https://unsplash.com/photos/F_-0BxGuVvo']")
    visit "/users/#{@second_user.id}"
    expect(page).to have_css("img[src*='https://unsplash.com/photos/F_-0BxGuVvo']")
  end

  it 'I can see the username of all other users' do
    visit "/users/#{ @first_user.id}"
    expect(page).to have_content('Tom')
    visit "/users/#{@second_user.id}"
    expect(page).to have_content('Lilly')
  end

  it 'I can see the number of posts the user has written.' do
    first_post = Post.create(author_id: @first_user.id, title: 'Hello', text: 'This is my first post',
                             comments_counter: 0, likes_counter: 0)
    first_post.update_posts_counter
    visit "/users/#{ @first_user.id}"
    expect(page).to have_content('Number of posts: 1')
    visit "/users/#{ @second_user.id}"
    expect(page).to have_content('Number of posts: 0')
  end

  it "I can see the user's bio." do
    visit "/users/#{ @first_user.id}"
    expect(page).to have_content('Bio')
    expect(page).to have_content('Teacher from Mexico.')
    visit "/users/#{@second_user.id}"
    expect(page).to have_content('Bio')
    expect(page).to have_content('Teacher from Poland.')
  end
end
