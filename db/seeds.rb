# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

puts 'Destroy flats, bookings, and reviews ...'
Flat.destroy_all
puts '-----------------------------------------'


puts 'Destroy categories ...'
Category.destroy_all
puts 'Creating default categories...'
categories_attributes = [
  {
    name:         'Apartment',
    detail:       'Entire unit in an apartment building with shared facilities, ie. pool or lobby.'
  },
  {
    name:         'Hotel',
    detail:       'A unit or a room in a one to five stars hotel'
  },
  {
    name:         'Hostel',
    detail:       'A bunk bed in a shared room'
  },
  {
    name:         'Guest House',
    detail:       'A room in a shared house or flat'
  },
  {
    name:         'House',
    detail:       'An entire amenities of this landed propertied, including private balcony, yard and pool if any.'
  }
]
Category.create!(categories_attributes)
puts 'Categories created!'
puts '-----------------------------------------'


puts 'Destroy statuses ...'
Status.destroy_all
puts 'Creating default statuses...'
statuses_attributes = [
  { state: 'Pending' }, { state: 'Confirmed' }, { state: 'Rejected' }
]
Status.create!(statuses_attributes)
puts 'Statuses created!'
puts '-----------------------------------------'


puts 'Destroy countries ...'
Country.destroy_all
puts 'Creating initial list of countries...'
countries_attributes = [
  { country_name: 'Indonesia' }, { country_name: 'Singapore' }, { country_name: 'Spain' }, { country_name: 'France' }
]
Country.create!(countries_attributes)
puts 'Countries created!'
puts '-----------------------------------------'

puts 'Destroy users ...'
User.destroy_all
puts 'Creating initial users...'
users_attributes = [
    {
        email:       'flo@test.com',
        password:    'password'
    },
    {
        email:       'test@test.com',
        password:    'password'
    }
]
User.create!(users_attributes)
puts 'Users created!'
puts '-----------------------------------------'



# puts 'Creating restaurants...'
# restaurants_attributes = [
#   {
#     name:         'Dishoom',
#     address:      '7 Boundary St, London E2 7JE',
#     description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
#     stars:        5
#   },
#   {
#     name:         'Pizza East',
#     address:      '56A Shoreditch High St, London E1 6PQ',
#     description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
#     stars:        4
#   }
# ]
# Restaurant.create!(restaurants_attributes)
# puts 'Finished!'