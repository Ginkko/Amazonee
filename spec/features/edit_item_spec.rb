require 'rails_helper'

describe "the edit item path" do

  it 'edits an item' do
    admin_login
    item = FactoryGirl.create(:item, user_id: @admin.id)
    visit edit_item_path(item)
    fill_in 'item_name', with: 'editname'
    click_on 'Update Item'
    expect(page).to have_content 'editname'
  end

  it 'returns an error when fields missing' do
    admin_login
    item = FactoryGirl.create(:item, user_id: @admin.id)
    visit edit_item_path(item)
    fill_in 'item_name', with: ''
    click_on 'Update Item'
    expect(page).to have_content "can't be blank"
  end

end
