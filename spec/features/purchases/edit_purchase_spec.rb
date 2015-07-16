require 'rails_helper'

describe 'the edit a purchase path' do
  it 'edits a purchase' do
    admin_login
    purchase = FactoryGirl.create(:purchase)
    visit edit_purchase_path(purchase)
    fill_in 'purchase_name', with: 'editedpurchase'
    click_on "Update Purchase"
    expect(page).to have_content('editedpurchase')
  end

  it 'returns an error when fields missing' do
    admin_login
    purchase = FactoryGirl.create(:purchase)
    visit edit_purchase_path(purchase)
    fill_in 'purchase_name', with: ''
    click_on 'Update Purchase'
    expect(page).to have_content "can't be blank"
  end
end
