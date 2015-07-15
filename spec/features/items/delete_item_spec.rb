require 'rails_helper'

describe 'Delete an item' do
  it 'allows an authorized user to delete the item' do
    admin_login
    item = FactoryGirl.create(:item, user_id: @admin.id)
    visit item_path(item)
    click_on "Delete"
    expect(page).to_not have_content(item.name)
    expect(page).to have_content("Item Deleted")
  end


  it 'does not allow an unauthorized user to delete the item' do
    user = FactoryGirl.create(:user, email: 'user1@user.com')
    user_login
    item = FactoryGirl.create(:item, user_id: user.id)
    visit item_path(item)
    expect(page).to_not have_content 'Delete'
  end
  
end
