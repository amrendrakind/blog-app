require 'rails_helper'

RSpec.describe 'User post index page', type: :system do
    before(:all) do
        User.destroy_all
        @first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
        bio: 'Teacher from Mexico.', post_counter: 0)

        @first_post = Post.create(author_id: @first_user.id, title: 'Hello', text: 'This is my first post',
                                comments_counter: 0, likes_counter: 0)
        @second_post = Post.create(author_id: @first_user.id, title: 'Hello', text: 'This is my second post',
                                comments_counter: 0, likes_counter: 0)
        @third_post = Post.create(author_id: @first_user.id, title: 'Hello', text: 'This is my third post',
                                comments_counter: 0, likes_counter: 0)
        @fourth_post = Post.create(author_id: @first_user.id, title: 'Hello', text: 'This is my fourth post',
                                comments_counter: 0, likes_counter: 0)
    end

    it 'I can see the users profile picture.' do 
        visit "/users/#{ @first_user.id}/posts"
        expect(page).to have_css("img[src*='https://unsplash.com/photos/F_-0BxGuVvo']")
    end

end