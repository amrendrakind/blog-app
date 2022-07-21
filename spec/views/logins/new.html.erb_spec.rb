require 'rails_helper'

RSpec.describe 'logins/new', type: :view do
  before(:each) do
    assign(:login, Login.new)
  end

  it 'renders new login form' do
    render
    pending "add some examples to (or delete) #{__FILE__}"
    # assert_select 'form[action=?][method=?]', logins_path, 'post' do
    # end
  end
end
