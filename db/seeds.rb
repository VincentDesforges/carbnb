# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Car.destroy_all

puts "Starts seed users..."

john = User.new({
  first_name: "John",
  last_name: "Johnson",
  username: "johnjohn123",
  address: "London",
  email: "john1@example.com",
  password: "123456"
})

seb = User.new({
  first_name: "Seb",
  last_name: "Saunier",
  username: "sebby3000",
  address: "Paris",
  email: "seb@example.com",
  password: "1234567"
})

john.save!
seb.save!

puts "User seed done..."
puts "Starts seed cars..."

bugatti = Car.new({
  make: "Bugatti",
  model: "Chiron",
  year: 2017,
  color: "orange",
  mileage: 10000,
  price_per_day: 35.5,
  location: "Hoxton, London",
})
bugatti.user = john

mini = Car.new({
  make: "Mini",
  model: "Cooper OG",
  year: 1990,
  color: "green",
  mileage: 100000,
  price_per_day: 99.9,
  location: "Soho, London",
})

mini.user = seb

bugatti.save!
mini.save!

puts "Car seed done..."
puts "Seed finished..."






