require 'rails_helper'

describe "The not logged in path" do
  it "allows a not logged in user to read all" do
    item_apples = FactoryGirl.create(:item, name: "Apples")
    item_oranges = FactoryGirl.create(:item, name: "Oranges")
    visit root_path
    expect(page).to have_content 'Apples'
    expect(page).to have_content 'Items'
  end
end
