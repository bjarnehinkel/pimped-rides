# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Listing.destroy_all

Listing.destroy_all

puts "the test starts here"
10.times do
  listing = Listing.new(
    photo_code: 'https://source.unsplash.com/random',
    # photo: 'https://source.unsplash.com/random',
    brand: Faker::Vehicle.make,
    production_year: 2014,
    user: User.new(email: Faker::Internet.email , password: '123456'),
    name: Faker::Vehicle.model,
    start_date: Faker::Date.in_date_period,
    end_date: Faker::Date.forward(days: 14),
    prices: 290
  )
  listing.save!
end
puts "the test end here"



