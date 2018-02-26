# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Car.destroy_all

puts "Starts seed..."

User.create!({
  first_name: "John",
  last_name: "Johnson",
  username: "johnjohn123",
  address: "London",
  email: "john1@example.com",
  password: "123456"
})

User.create!({
  first_name: "Seb",
  last_name: "Saunier",
  username: "sebby3000",
  address: "Paris",
  email: "seb@example.com",
  password: "1234567"
})

Car.create!({
  make: "Bugatti",
  model: "Chiron",
  year: 2017,
  color: "orange",
  mileage: 10000,
  price_per_day: 35.5,
  location: "Hoxton, London",
  user_id: 9
  })

Car.create!({
  make: "Mini",
  model: "Cooper OG",
  year: 1990,
  color: "green",
  mileage: 100000,
  price_per_day: 99.9,
  location: "Soho, London",
  user_id: 10
  })

puts "Seed finished..."






