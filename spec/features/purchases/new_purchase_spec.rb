require 'rails_helper'

describe "the create a purchase path" do
  it "creates a new purchase" do
    admin_login
    visit root_path
    item_apples = FactoryGirl.create(:item, name: "Apples")
    item_oranges = FactoryGirl.create(:item, name: "Oranges")
    click_link "Log a new Purchase"
    fill_in 'purchase_name', with: 'Testname'
    check "purchase_item_ids_#{item_apples.id}"
    click_button 'Create Purchase'
    expect(page).to have_content 'Apples'
    expect(page).to_not have_content 'Oranges'
  end

  it 'returns an error when fields missing' do
    admin_login
    visit root_path
    click_link "Log a new Purchase"
    click_button 'Create Purchase'
    expect(page).to have_content "can't be blank"
  end
end
