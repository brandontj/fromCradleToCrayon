require 'rails_helper'

RSpec.describe "demographics/edit", type: :view do
  before(:each) do
    @demographic = assign(:demographic, Demographic.create!())
  end

  it "renders the edit demographic form" do
    render

    assert_select "form[action=?][method=?]", demographic_path(@demographic), "post" do
    end
  end
end
