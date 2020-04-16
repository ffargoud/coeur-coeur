# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database"
Centre.destroy_all
Slot.destroy_all
puts "Database is clean"

puts 'Creating centres'
100.times do
Centre.create(
  name: Faker::Restaurant.name,
  adresse: Faker::Address.street_address,
  telephone: Faker::PhoneNumber.phone_number,
  info_diverses: Faker::Quote.famous_last_words
  )

puts "Centre #{centre.id} is created"
end

puts "Done!"
