require 'spec_helper'

feature 'manage Vegetables' do
  scenario 'User can create and view list of vegetables' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Vegetable'
    fill_in 'Vegetable type', with: 'squash'
    fill_in 'Color', with: 'yellow'
    click_on 'Create Vegetable'
    expect(page).to have_content 'squash'
    expect(page).to have_content 'yellow'
  end
end