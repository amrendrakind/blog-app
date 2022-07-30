require 'swagger_helper'

RSpec.describe 'api/my', type: :request do
  # Authentication

  path 'authenticate' do
    post 'Creates a json token' do
      tags 'authenticate'
      consumes 'application/json'
      parameter name: :authenticate, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[email password]
      }

      response '200', 'auth token generated' do
        let(:authenticate) { { auth_token: 'token string' } }
        run_test!
      end

      response '401', 'invalid request' do
        let(:authenticate) { { user_authentication: 'invalid credentials' } }
        run_test!
      end
    end
  end

  # Section user

  path '/users/{user_id}/posts.json' do
    get 'Retrieves a list of post' do
      tags 'Posts'
      produces 'application/json', 'application/xml'
      parameter name: :user_id, in: :path, type: :string

      response '200', 'post found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 title: { type: :string },
                 text: { type: :string },
                 likes_counter: { type: :integer },
                 comments_counter: { type: :integer },
                 timestamps: { type: :string },
                 created_at: { type: :string },
                 updated_at: { type: :string },
                 author_id: { type: :integer }
               }
        run_test!
      end

      response '404', 'post not found' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:Accept) { 'application/foo' }
        run_test!
      end
    end
  end

  # describe 'Blogs API' do

  path '/users/{User_id}/posts/{post_id}/comments' do
    post 'Creates a comment' do
      tags 'comments'
      consumes 'application/json'
      parameter name: :text, in: :body, schema: {
        type: :object,
        properties: {
          text: { type: :string }
        },
        required: ['text']
      }

      response '201', 'comments created' do
        let(:comments) { { text: 'this is comment' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:comments) { { text: 'this is comment' } }
        run_test!
      end
    end
  end
end
