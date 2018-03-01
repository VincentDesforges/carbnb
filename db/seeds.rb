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

bob = User.new({
  first_name: "Bob",
  last_name: "Smith",
  username: "bobby",
  address: "Manchester",
  email: "bob@example.com",
  password: "123456",
  remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903470/trump.jpg'
})

fred = User.new({
  first_name: "Fred",
  last_name: "Ronaldo",
  username: "real2018",
  address: "Madrid",
  email: "fred@example.com",
  password: "123456",
  remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903469/queen.jpg'
})

bill = User.new({
  first_name: "Bill",
  last_name: "Simon",
  username: "billy",
  address: "Bristol",
  email: "bill@example.com",
  password: "123456",
  remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903467/obama.jpg'
})

dan = User.new({
  first_name: "Dan",
  last_name: "Johnson",
  username: "DJ",
  address: "Bath",
  email: "dan@example.com",
  password: "123456",
  remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903464/hulk.jpg'
})

ed = User.new({
  first_name: "Ed",
  last_name: "Ward",
  username: "E-dog",
  address: "Hoxton",
  email: "ed@example.com",
  password: "123456",
  remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903462/chew.jpg'
})

john.save!
seb.save!
admin.save!
bob.save!
fred.save!
bill.save!
dan.save!
ed.save!

puts "User seed done..."
puts "Starts seed cars..."

bugatti = Car.new({
  make: "Bugatti",
  model: "Chiron",
  year: 2017,
  color: "orange",
  mileage: 10000,
  price_per_day: 35,
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
  price_per_day: 99,
  location: "Soho, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519834660/mini-5dr-hatch-cooper-d-dct.jpg'

})
mini.user = User.find_by(username: "johnjohn123")

audi = Car.new({
  make: "Audi",
  model: "R8",
  year: 2017,
  color: "grey",
  mileage: 100000,
  price_per_day: 35,
  location: "Mayfair, London",
  #remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902260/images.jpg'

})
audi.user = User.find_by(username: "bobby")

ferrari = Car.new({
  make: "Ferrari",
  model: "La Ferrari",
  year: 1999,
  color: "red",
  mileage: 1000,
  price_per_day: 22,
  location: "Chelsea, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902261/ferrari.jpg'

})
ferrari.user = User.find_by(username: "real2018")

aston = Car.new({
  make: "Aston martin",
  model: "DB11",
  year: 2017,
  color: "grey",
  mileage: 8000,
  price_per_day: 73,
  location: "Kings Cross, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902261/db11.jpg'

})
aston.user = User.find_by(username: "billy")

porsche = Car.new({
  make: "Porsche",
  model: "911",
  year: 2016,
  color: "white",
  mileage: 5000,
  price_per_day: 69,
  location: "Marylebone, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902253/911.jpg'

})
porsche.user = User.find_by(username: "DJ")

atom = Car.new({
  make: "Ariel",
  model: "Atom",
  year: 2010,
  color: "black",
  mileage: 4000,
  price_per_day: 59,
  location: "Covent Garden, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902260/atom.jpg'

})
atom.user = User.find_by(username: "E-dog")

thrust = Car.new({
  make: "Thrust",
  model: "SSC",
  year: 1997,
  color: "black",
  mileage: 100,
  price_per_day: 39,
  location: "Waterloo, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902261/thrust.jpg'

})
thrust.user = User.find_by(username: "E-dog")

lambo = Car.new({
  make: "Lamborghini",
  model: "Huracan",
  year: 2015,
  color: "yellow",
  mileage: 40000,
  price_per_day: 89,
  location: "Westminster, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903241/lambo.jpg'

})
lambo.user = User.find_by(username: "billy")

tractor = Car.new({
  make: "Valtra",
  model: "Versu",
  year: 2018,
  color: "red",
  mileage: 6000,
  price_per_day: 79,
  location: "Kensington, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903247/tractor.jpg'

})
tractor.user = User.find_by(username: "real2018")

hummer = Car.new({
  make: "Hummer",
  model: "H2",
  year: 1997,
  color: "pink",
  mileage: 1000,
  price_per_day: 46,
  location: "Earls Court, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903244/hummer.png'

})
hummer.user = User.find_by(username: "DJ")

mustang = Car.new({
  make: "Ford",
  model: "Mustang",
  year: 1967,
  color: "blue",
  mileage: 9600,
  price_per_day: 89,
  location: "Waterloo, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903241/mustang.jpg'

})
mustang.user = User.find_by(username: "sebby3000")

bmw = Car.new({
  make: "BMW",
  model: "M3",
  year: 2014,
  color: "blue",
  mileage: 9600,
  price_per_day: 89,
  location: "Whitechapel, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519906461/m3.png'

})
bmw.user = User.find_by(username: "billy")

volvo = Car.new({
  make: "Volvo",
  model: "SC90",
  year: 2011,
  color: "grey",
  mileage: 9600,
  price_per_day: 89,
  location: "Mayfair, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519906466/volvo.jpg'

})
volvo.user = User.find_by(username: "DJ")

mecan = Car.new({
  make: "Porsche",
  model: "Mecan",
  year: 1996,
  color: "grey",
  mileage: 9600,
  price_per_day: 89,
  location: "Marylebone, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519906462/mecan.webp'

})
mecan.user = User.find_by(username: "johnjohn123")

cayenne = Car.new({
  make: "Porsche",
  model: "Cayenne",
  year: 1967,
  color: "blue",
  mileage: 9600,
  price_per_day: 54,
  location: "Chelsea, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907020/cayenne.jpg'

})
cayenne.user = User.find_by(username: "sebby3000")

db5 = Car.new({
  make: "Aston Martin",
  model: "DB5",
  year: 1963,
  color: "green",
  mileage: 9600,
  price_per_day: 89,
  location: "Waterloo, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519906989/db5.jpg'

})
db5.user = User.find_by(username: "DJ")

mclaren = Car.new({
  make: "Mclaren",
  model: "Senna",
  year: 2017,
  color: "orange",
  mileage: 3600,
  price_per_day: 39,
  location: "Charing Cross, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907124/mclaren.jpg'

})
mclaren.user = User.find_by(username: "billy")

spider = Car.new({
  make: "Mclaren",
  model: "Spider",
  year: 1963,
  color: "blue",
  mileage: 15000,
  price_per_day: 75,
  location: "Hyde Park, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907042/spider.jpg'

})
spider.user = User.find_by(username: "bobby")

greyferrari = Car.new({
  make: "Ferrari",
  model: "458",
  year: 2018,
  color: "grey",
  mileage: 10000,
  price_per_day: 65,
  location: "Baker Street, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907535/458.jpg'

})
greyferrari.user = User.find_by(username: "sebby3000")

countryman = Car.new({
  make: "Mini",
  model: "Countryman",
  year: 2018,
  color: "grey",
  mileage: 10000,
  price_per_day: 65,
  location: "Baker Street, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907526/countryman.jpg'

})
countryman.user = User.find_by(username: "billy")

fiat = Car.new({
  make: "Fiat",
  model: "500",
  year: 2018,
  color: "green",
  mileage: 10000,
  price_per_day: 65,
  location: "Baker Street, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519910740/fiat.jpg'

})
fiat.user = User.find_by(username: "DJ")

smart = Car.new({
  make: "Smart",
  model: "2",
  year: 2018,
  color: "grey",
  mileage: 10000,
  price_per_day: 65,
  location: "Waterloo, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519910777/smart2.jpg'

})
smart.user = User.find_by(username: "johnjohn123")

beetle = Car.new({
  make: "VW",
  model: "Beetle",
  year: 1987,
  color: "green",
  mileage: 10000,
  price_per_day: 25,
  location: "Baker Street, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519910731/beetle.jpg'

})
beetle.user = User.find_by(username: "real2018")

monster = Car.new({
  make: "Monster",
  model: "Truck",
  year: 2014,
  color: "Green",
  mileage: 12000,
  price_per_day: 15,
  location: "Green Park, London",
  # remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519910747/monster.jpg'

})
monster.user = User.find_by(username: "real2018")

bugatti.save!
mini.save!
audi.save!
ferrari.save!
aston.save!
porsche.save!
atom.save!
thrust.save!
lambo.save!
tractor.save!
hummer.save!
mustang.save!
bmw.save!
volvo.save!
mecan.save!
cayenne.save!
db5.save!
mclaren.save!
spider.save!
countryman.save!
greyferrari.save!
fiat.save!
smart.save!
beetle.save!
monster.save!

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

photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902260/images.jpg')
photo.car = Car.find_by(make: "Audi", model: "R8")
photo.save!

photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902261/ferrari.jpg')
photo.car = Car.find_by(make: "Ferrari", model: "La Ferrari")
photo.save!

photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902261/db11.jpg')
photo.car = Car.find_by(make: "Aston martin", model: "DB11")
photo.save!


  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902253/911.jpg')
  photo.car = Car.find_by(make: "Porsche", model: "911")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902260/atom.jpg')
  photo.car = Car.find_by(make: "Ariel", model: "Atom")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519902261/thrust.jpg')
  photo.car = Car.find_by(make: "Thrust", model: "SSC")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903241/lambo.jpg')
  photo.car = Car.find_by(make: "Lamborghini", model: "Huracan")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903247/tractor.jpg')
  photo.car = Car.find_by(make: "Valtra", model: "Versu")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903244/hummer.png')
  photo.car = Car.find_by(make: "Hummer", model: "H2")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519903241/mustang.jpg')
  photo.car = Car.find_by(make: "Ford", model: "Mustang")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519906461/m3.png')
  photo.car = Car.find_by(make: "BMW", model: "M3")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519906466/volvo.jpg')
  photo.car = Car.find_by(make: "Volvo", model: "SC90")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519906462/mecan.webp')
  photo.car = Car.find_by(make: "Porsche", model: "Mecan")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907020/cayenne.jpg')
  photo.car = Car.find_by(make: "Porsche", model: "Cayenne")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519906989/db5.jpg')
  photo.car = Car.find_by(make: "Aston Martin", model: "DB5")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907124/mclaren.jpg')
  photo.car = Car.find_by(make: "Mclaren", model: "Senna")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907042/spider.jpg')
  photo.car = Car.find_by(make: "Mclaren", model: "Spider")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907535/458.jpg')
  photo.car = Car.find_by(make: "Ferrari", model: "458")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519907526/countryman.jpg')
  photo.car = Car.find_by(make: "Mini", model: "Countryman")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519910740/fiat.jpg')
  photo.car = Car.find_by(make: "Fiat", model: "500")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519910777/smart2.jpg')
  photo.car = Car.find_by(make: "Smart", model: "2")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519910731/beetle.jpg')
  photo.car = Car.find_by(make: "VW", model: "Beetle")
  photo.save!

  photo = Carphoto.new(remote_photo_url: 'http://res.cloudinary.com/dhulqpis6/image/upload/v1519910747/monster.jpg')
  photo.car = Car.find_by(make: "Monster", model: "Truck")
  photo.save!

puts "Photo seed done..."
puts "Seed finished..."







