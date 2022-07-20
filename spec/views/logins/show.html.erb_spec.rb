require 'rails_helper'

RSpec.describe 'logins/show', type: :view do
  before(:each) do
    @login = assign(:login, Login.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
