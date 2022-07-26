require 'rails_helper'

RSpec.describe 'User index page', type: :system do
  before(:all) do
    User.destroy_all
    @first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                              bio: 'Teacher from Mexico.', post_counter: 0)
  end
end
