require 'rails_helper'

RSpec.describe "demographics/new", type: :view do
  before(:each) do
    assign(:demographic, Demographic.new())
  end

  it "renders new demographic form" do
    render

    assert_select "form[action=?][method=?]", demographics_path, "post" do
    end
  end
end
