100.times do
  Account::User.create(
    email: Faker::Internet.email,
    password: Faker::Number.number(digits: 10),
    age: Faker::Number.number(digits: 2),
  )
end
