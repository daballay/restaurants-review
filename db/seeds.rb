# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating restaurants"
Restaurant.destroy_all
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '11111', category: 'french'}
la_hacienda = { name: "La Hacienda", address: "Isidora Goyenechea", phone_number: '22222', category: 'italian'}
wenwa = { name: "Wenwa", address: "Vitacura 12334", phone_number: '33333', category: 'japanese'}
tiramisu = { name: "Tiramisu", address: "Isidora Goyenechea", phone_number: '44444', category: 'italian'}
la_perla = { name: "la Perla", address: "Bilbao 1234", phone_number: '55555', category: 'chinese'}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St", phone_number: '77777', category: 'belgian'}

restaurants = [dishoom, la_hacienda, wenwa, tiramisu, la_perla, pizza_east]
restaurants.each do |key|
  restaurant = Restaurant.new(key)
  restaurant.save
  puts "creado: #{restaurant.name}"
end
