# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom1= {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 1111, category: "chinese"}
dishoom2 =  {name: "Dishoom2", address: "8 Boundary St, London E2 7JE", phone_number: 2222, category: "italian"}
dishoom3 =  {name: "Dishoom3", address: "9 Boundary St, London E2 7JE", phone_number: 3333, category: "japanese"}
dishoom4 =  {name: "Dishoom4", address: "10 Boundary St, London E2 7JE", phone_number: 4444, category: "french"}
dishoom5 =  {name: "Dishoom5", address: "11 Boundary St, London E2 7JE", phone_number: 5555, category: "belgian"}

[dishoom1, dishoom2, dishoom3, dishoom4, dishoom5].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
