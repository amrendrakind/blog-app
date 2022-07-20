require 'rails_helper'

RSpec.describe 'logins/index', type: :view do
  before(:each) do
    assign(:logins, [
             Login.create!,
             Login.create!
           ])
  end

  it 'renders a list of logins' do
    render
  end
end
