require 'rails_helper'

RSpec.describe 'User post index page', type: :system do
    before(:all) do

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

    it 'I can see the users username.' do 
        visit "/users/#{ @first_user.id}/posts"
        expect(page).to have_content('Tom')
    end

    it 'I can see the number of posts the user has written.' do 
        visit "/users/#{ @first_user.id}/posts"
        expect(page).to have_content('Number of posts: 4')
    end

    it 'I can see a posts title.' do 
        visit "/users/#{ @first_user.id}/posts"
        expect(page).to have_content('Post #', count:3)
    end

    it 'I can see some of the posts body.' do 
        visit "/users/#{ @first_user.id}/posts"
        expect(page).to have_content('Likes:0', count:3)
    end

    it 'I can see the first comments on a post.' do 
        @first_comment=Comment.create(post_id: @third_post.id, author_id: @first_user.id, text: 'This is my first comment' )
        visit "/users/#{ @first_user.id}/posts"
        expect(page).to have_content(@first_comment.text)
    end


end