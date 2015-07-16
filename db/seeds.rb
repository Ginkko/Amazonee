users = User.create([
    { email: "Voltron@voltron.com", password: "asdfghjkl", password_confirmation: "asdfghjkl", admin: true }
])

100.times do
  FactoryGirl.create(:item, name: Faker::Hacker.adjective + " " + Faker::Hacker.noun + Faker::Address.city_suffix, description: Faker::Lorem.paragraphs(3).join(" "), regular_price: Faker::Number.decimal(2), sale_price: Faker::Number.decimal(2), user_id: users.first.id)
end
