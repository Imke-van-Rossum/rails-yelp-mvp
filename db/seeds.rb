# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

puts 'Adding restaurants...'
taco_bell = {
  name: 'Taco Bell',
  address: '24 Ringo Alley',
  phone_number: '+33 12345678',
  category: 'chinese'
}

mcd = {
  name: 'McDonald\'s',
  address: '125 Moping Street',
  phone_number: '+31 12345678',
  category: 'belgian'
}

pizza_hut ={
  name: 'Pizza Hut',
  address: '90 Slumber Hill',
  phone_number: '+44 12345678',
  category: 'italian'
}

shabu_shabu ={
  name: 'Shabu Shabu',
  address: '8 Hachiko Kohaku',
  phone_number: '+41 12345678',
  category: 'japanese'
}

three_broomsticks ={
  name: 'Three Broomsticks',
  address: '394 Diagon Alley',
  phone_number: '+30 12345678',
  category: 'french'
}

kfc ={
  name: 'K.F.C',
  address: '65 Alley Way',
  phone_number: '+43 12345678',
  category: 'belgian'
}


Restaurant.create!(taco_bell)
Restaurant.create!(mcd)
Restaurant.create!(pizza_hut)
Restaurant.create!(shabu_shabu)
Restaurant.create!(three_broomsticks)
Restaurant.create!(kfc)

puts 'Done.'
