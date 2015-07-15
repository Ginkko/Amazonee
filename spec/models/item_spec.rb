require 'rails_helper'

describe Item do

  it { should belong_to :user }
  it { should have_and_belong_to_many :purchases }

  it { should validate_presence_of :name }
  it { should validate_presence_of :regular_price }
  it { should validate_presence_of :sale_price }

  it { should validate_uniqueness_of :name}
end
