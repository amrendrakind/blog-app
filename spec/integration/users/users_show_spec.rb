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



end
