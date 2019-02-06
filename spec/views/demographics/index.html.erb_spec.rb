require 'rails_helper'

RSpec.describe "demographics/index", type: :view do
  before(:each) do
    assign(:demographics, [
      Demographic.create!(),
      Demographic.create!()
    ])
  end

  it "renders a list of demographics" do
    render
  end
end
