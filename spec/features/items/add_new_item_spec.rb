require 'rails_helper'

describe 'Add a new item' do
  it 'lets a user add new items' do
    admin_login
    visit new_item_path
    fill_in 'item_name', with: "testname"
    fill_in 'item_regular_price', with: 699.99
    fill_in 'item_sale_price', with: 399.99
    click_on 'Create Item'
    expect(page).to have_content("Added by: ")
    expect(page).to have_content("testname")
    expect(page).to have_content("699.99")
    expect(page).to have_content("399.99")
  end

  it 'returns an error if missing fields' do
    admin_login
    visit new_item_path
    click_on 'Create Item'
    expect(page).to have_content("can't be blank")
  end

end
