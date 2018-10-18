require 'rails_helper'

RSpec.feature 'create new expense', type: :feature do
  background do
#    user = create(:user)
    visit '/'
  end

  #  Kroger = "Kroger"
  #  Giant_Eagle = "Giant Eagle"

  scenario 'Create empty expense' do
    user_logged_in
    click_button 'Expenses'
    click_button 'New'
    within('#expense') do
      fill_in('expense_name', with: '')
    end
    click_button 'Enter'
    expect(page).to have_content 'Failure'
  end

  scenario 'Creating new expense' do
    user_logged_in
    click_button 'Expenses'
    click_button 'New'
    within('#expense') do
      fill_in('expense_name', with: 'Kroger')
    end
    click_button 'Enter'
    expect(page).to have_content 'Success'
  end
  scenario 'Edits an existing expense' do
    user_logged_in
    click_button 'Expenses'
    click_button 'Edit'
    within('#expense') do
      find_field('Kroger').value
      fill_in('expense_name', with: 'Giant Eagle')
    end
    click_button 'Enter'
    expect(page).to have_content 'Success'
  end

  scenario 'Delete an existing expense' do
    user_logged_in
    click_button 'Expenses'
    click_button 'Delete'
    within('#expense') do
      fill_in('expense_name', with: 'Giant Eagle')
    end
    click_button 'Enter'
    expect(page).to have_content 'Success'
  end

  scenario 'Delete expense that doesnt exist' do
    user_logged_in
    click_button 'Expenses'
    click_button 'Delete'
    within('#expense') do
      fill_in('expense_name', with: 'Giant Eagle')
    end
    click_button 'Enter'
    expect(page).to have_content 'Failure'
  end

end
