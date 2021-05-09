100.times do |t|
  puts ">>>>>>>>>>>>>>>>>"
  puts "time is #{t}"
  Account::User.create(
    email: Faker::Internet.email,
    password: Faker::Number.number(digits: 10),
  )
end
