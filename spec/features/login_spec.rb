require "rails_helper"

RSpec.feature "login or register", :type => :feature do
  scenario "Registering for an account" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "something@example.com"
    fill_in "First name", with: "test"
    fill_in "Last name", with: "account"
    fill_in "User name", with: "testaccount"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_css("header.navbar li.user", text: "something@example.com")
  end

  scenario "Logging in with an existing account" do
    user = create(:user)
    visit "/"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
    expect(page).to have_css("header.navbar li.user", text: user.email)
  end

  scenario "Logging out and returning to login screen" do
    user_logged_in
    click_link "Logout"
    expect(page).to have_text("Log in")
  end
end
