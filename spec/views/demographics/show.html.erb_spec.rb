require 'rails_helper'

RSpec.describe "demographics/show", type: :view do
  before(:each) do
    @demographic = assign(:demographic, Demographic.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
