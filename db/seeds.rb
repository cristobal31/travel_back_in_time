# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Yes"

Event.destroy_all
User.destroy_all

daniel = User.create!(email: "danielpippino986@gmail.com", password: "123456", first_name: "Daniel", last_name: "Pippin")
luca = User.create!(email: "lucaiscool@gmail.com", password: "12345678", first_name: "Luca", last_name: "Bonaparte")



berlin_wall = Event.create!(user_id: User.all.sample.id, category: "politics", era: "late modern", name: "fall of berlin wall", year: "1989", price: 100, description: "fall of berlin wall")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/berlin_wall_mrdcib.jpg")
berlin_wall.photo.attach(io: file, filename: "berlin wall.jpeg", content_type: "image/jpeg")
berlin_wall.save

puts "no"
