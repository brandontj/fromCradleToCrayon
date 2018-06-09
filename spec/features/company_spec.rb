require 'rspec'
require 'capybara/rails'

feature "create new comoany" do
User.make(email: 'user@example.com', password: 'password')

scenario 'Create empty company'do
  visit '/company/new'
  within("#company") do
    fill_in('company_name', :with => '')
  end
  click_button 'Enter'
  expect(page).to have_content 'Failure'
end
scenario 'Creating new company'do
    visit '/company/new'
    within("#company") do
      fill_in('company_name', :with => 'Kroger')
    end
     click_button 'Enter'
     expect(page).to have_content 'Success'
end
scenario 'Edits an existing company'do
      visit '/company/edit'
      within("#company") do
        find_field('Kroger').value
        fill_in('company_name', :with => 'Giant Eagle')
      end
      click_button 'Enter'
      expect(page).to have_content 'Success'
    end
end
scenario 'Delete an existing company'do
    visit '/company/delete'
    within("#company") do
      fill_in('company_name', :with => 'Giant Eagle')
    end
    click_button 'Enter'
    expect(page).to have_content 'Success'
end
scenario 'Delete company that doesnt exist'do
  visit '/company/delete'
  within("#company") do
    fill_in('company_name', :with => 'Giant Eagle')
  end
  click_button 'Enter'
  expect(page).to have_content 'Failure'
end
