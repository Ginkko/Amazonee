FactoryGirl.define do

  factory :user do
    email 'voltron@gmail.com'
    password '123456789'
    password_confirmation '123456789'
    factory :admin do
      admin true
    end
  end

  factory :item do
    name 'testitem'
    description 'testdescription'
    regular_price 6.66
    sale_price 3.33
  end

  factory :purchase do
    name 'testpurchase'
    date DateTime.now
  end


end
