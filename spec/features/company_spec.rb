require 'rails_helper'

RSpec.feature 'create new comoany', type: :feature do
  background do
#    user = create(:user)
    visit '/'
  end

  #  Kroger = "Kroger"
  #  Giant_Eagle = "Giant Eagle"

  scenario 'Create empty company' do
    user_logged_in
    click_button 'Companies'
    click_button 'New'
    within('#company') do
      fill_in('company_name', with: '')
    end
    click_button 'Enter'
    expect(page).to have_content 'Failure'
  end

  scenario 'Creating new company' do
    user_logged_in
    click_button 'Companies'
    click_button 'New'
    within('#company') do
      fill_in('company_name', with: 'Kroger')
    end
    click_button 'Enter'
    expect(page).to have_content 'Success'
  end
  scenario 'Edits an existing company' do
    user_logged_in
    click_button 'Companies'
    click_button 'Edit'
    within('#company') do
      find_field('Kroger').value
      fill_in('company_name', with: 'Giant Eagle')
    end
    click_button 'Enter'
    expect(page).to have_content 'Success'
  end

  scenario 'Delete an existing company' do
    user_logged_in
    click_button 'Companies'
    click_button 'Delete'
    within('#company') do
      fill_in('company_name', with: 'Giant Eagle')
    end
    click_button 'Enter'
    expect(page).to have_content 'Success'
  end

  scenario 'Delete company that doesnt exist' do
    user_logged_in
    click_button 'Companies'
    click_button 'Delete'
    within('#company') do
      fill_in('company_name', with: 'Giant Eagle')
    end
    click_button 'Enter'
    expect(page).to have_content 'Failure'
  end

end
