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

  scenario 'User can edit and update vegetables' do
    visit '/'
    click_on 'Add Vegetable'
    fill_in 'Vegetable type', with: 'squash'
    fill_in 'Color', with: 'yellow'
    click_on 'Create Vegetable'
    expect(page).to have_content 'squash'
    expect(page).to have_content 'yellow'
    click_on 'squash'
    expect(page).to have_content 'squash'
    expect(page).to have_content 'yellow'
    click_on 'Edit vegetable'
    fill_in 'Vegetable type', with: 'pumpkin'
    fill_in 'Color', with: 'orange'
    click_on 'Update vegetable'
    expect(page).to have_content 'pumpkin'
    expect(page).to have_content 'orange'
    expect(page).to have_no_content 'squash'
    expect(page).to have_no_content 'yellow'


  end
end