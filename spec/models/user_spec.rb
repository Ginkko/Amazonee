require 'rails_helper'

describe User do

  it { should have_many :purchases }
  it { should have_many :items }


end
