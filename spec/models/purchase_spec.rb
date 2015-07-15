require 'rails_helper'

describe Purchase do

  it { should belong_to :user }
  it { should have_and_belong_to_many :items }

  it { should validate_presence_of :name }
  it { should validate_presence_of :date }
end
