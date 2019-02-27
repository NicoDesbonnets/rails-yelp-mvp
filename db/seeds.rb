# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

10.times do
  name = Faker::Restaurant.name
  address = Faker::Address.street_address
  category = ['italian', 'chinese', 'french', 'belgian', 'japanese'].sample
  phone = Faker::PhoneNumber.cell_phone
  restaurant = Restaurant.new(name: name, address: address, category: category, phone_number: phone)
  restaurant.save
end
