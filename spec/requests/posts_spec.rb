require "rails_helper"

RSpec.describe "Posts Tests", :type => :request do
    context 'Index' do
        before(:each) { 
            get "/users/1/posts"
         } 
        it "Correct template was rendered." do
             expect(response).to render_template(:index)
        end
        it "Response status was correct." do
             expect(response).to have_http_status(:ok)
        end
        it "Includes correct placeholder text." do
            expect(response.body).to include("This is all posts of users")
        end
    end
    context 'Show' do
        before(:each) { 
            get "/users/1/posts/1"
         } 
        it "Correct template was rendered." do
             expect(response).to render_template(:show)
        end
        it "Response status was correct." do
            expect(response).to have_http_status(:ok)
        end
        it "Includes correct placeholder text." do
              expect(response.body).to include("This is specific post of specific users")
        end
    end
end