require 'rails_helper'

describe "the delete purchase path" do

  it "deletes a purchase" do
    admin_login
    purchase = FactoryGirl.create(:purchase, user_id: @admin.id)
    visit purchase_path(purchase)
    click_on 'Delete'
    expect(page).to have_content "Purchase Deleted"
    expect(page).to_not have_content purchase.name
  end


end
