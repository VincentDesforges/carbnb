# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting old database..."
Carphoto.destroy_all
Car.destroy_all
User.destroy_all

puts "Starts seed users..."

john = User.new({
  first_name: "Vincent",
  last_name: "Johnson",
  username: "johnjohn123",
  address: "London",
  email: "john1@example.com",
  password: "123456",
  remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519745313/nzoa0wkkahq6paue89jc.png'
})

# Galaxy.create!(
# name: 'Andromeda',
# remote_photo_url: 'http://apod.nasa.gov/apod/image/1407/m31_bers_960.jpg',
# address: 'next to the Milky Way')

seb = User.new({
  first_name: "Johann",
  last_name: "Saunier",
  username: "sebby3000",
  address: "Paris",
  email: "seb@example.com",
  password: "1234567",
  remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519834765/Screen_Shot_2018-02-28_at_4.18.51_pm.png'
})

admin = User.new({
  first_name: "Ad",
  last_name: "Min",
  username: "admin01",
  address: "administan",
  email: "admin@example.com",
  password: "123456",
  admin: true
})

john.save!
seb.save!
admin.save!


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
  # remote_photo_url:'http://res.cloudinary.com/dhulqpis6/image/upload/v1519493904/k7n9gni8qhnapwo1yztz.jpg'
})
bugatti.user = User.find_by(username: "sebby3000")

mini = Car.new({
  make: "Mini",
  model: "Cooper OG",
  year: 1990,
  color: "green",
  mileage: 100000,
  price_per_day: 99.9,
  location: "Soho, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519834660/mini-5dr-hatch-cooper-d-dct.jpg'

})
mini.user = User.find_by(username: "johnjohn123")

bugatti.save!
mini.save!

puts "Car seed done..."
puts "Starting photos seed"

photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519493904/k7n9gni8qhnapwo1yztz.jpg')
photo.car = Car.find_by(make: "Bugatti", model:"Chiron")
photo.save!

photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519493904/k7n9gni8qhnapwo1yztz.jpg')
photo.car = Car.find_by(make: "Bugatti", model:"Chiron")
photo.save!

photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519834660/mini-5dr-hatch-cooper-d-dct.jpg')
photo.car = Car.find_by(make: "Mini", model:"Cooper OG")
photo.save!

puts "Photo seed done..."
puts "Seed finished..."






