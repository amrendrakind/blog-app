require 'rails_helper'

RSpec.describe 'logins/edit', type: :view do
  before(:each) do
    @login = assign(:login, Login.create!)
  end

  it 'renders the edit login form' do
    render
    pending "add some examples to (or delete) #{__FILE__}"
    # assert_select 'form[action=?][method=?]', login_path(@login), 'post' do
    # end
  end
end
