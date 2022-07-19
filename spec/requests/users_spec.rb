require 'rails_helper'

RSpec.describe 'Users Tests', type: :request do
  context 'Index' do
    before(:each) do
      get '/users'
    end
    it 'Correct template was rendered.' do
      expect(response).to render_template(:index)
    end
    it 'Response status was correct.' do
      expect(response).to have_http_status(:ok)
    end
    it 'Includes correct placeholder text.' do
      expect(response.body).to include('This is for all users')
    end
  end
  context 'Show' do
    before(:each) do
      get '/users/1'
    end
    it 'Correct template was rendered' do
      expect(response).to render_template(:show)
    end
    it 'Response status was correct.' do
      expect(response).to have_http_status(:ok)
    end
    it 'Includes correct placeholder text.' do
      expect(response.body).to include('This is for specific user')
    end
  end
end
