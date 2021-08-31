# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shelter.destroy_all
Pet.destroy_all

Pet.create(breed: "gsd", name: "baron", age: 8, weight: 90, gps_chip: true, shelter_id: 1)
Pet.create(breed: "puddle", name: "happy", age: 2, weight: 120, gps_chip: true, shelter_id: 1)

Shelter.create(location: "Houston", name: "BARC", capacity: 200)

puts "Seed Done!"