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

moon_landing = Event.create!(user_id: User.all.sample.id, category: "science", era: "late modern", name: "moon landing", year: "1969", price: 300, description: "join the first moonlanding")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/moon_landing_yp7avm.jpg")
moon_landing.photo.attach(io: file, filename: "moon landing.jpeg", content_type: "image/jpeg")
moon_landing.save

giza = Event.create!(user_id: User.all.sample.id, category: "architecture", era: "ancient", name: "creation on the pyramids of giza", year: "2250 bc", price: 150, description: "watch the pyramids of giza being built")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678044/timescape/piramit_of_giza_pmih4c.jpg")
giza.photo.attach(io: file, filename: "giza.jpeg", content_type: "image/jpeg")
giza.save

woodstock = Event.create!(user_id: User.all.sample.id, category: "people", era: "late modern", name: "woodstock", year: "1967", price: 169, description: "Be part of the summer of love")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/woodstock_fmyck1.jpg")
woodstock.photo.attach(io: file, filename: "woodstock.jpeg", content_type: "image/jpeg")
woodstock.save

einstein = Event.create!(user_id: User.all.sample.id, category: "science", era: "late modern", name: "a lecture with albert einstein", year: "1938", price: 400, description: "spend a day with the smartest human of all time")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/einstein_lecture_dz3ljp.jpg")
einstein.photo.attach(io: file, filename: "einstein .jpeg", content_type: "image/jpeg")
einstein.save

trex_hunt = Event.create!(user_id: User.all.sample.id, category: "nature", era: "prehistory", name: "trex hunt", year: "2000000 bc", price: 200, description: "Watch a Trex hunting")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/t-rex_hunt_b7tjat.jpg")
trex_hunt.photo.attach(io: file, filename: "trex_hunt .jpeg", content_type: "image/jpeg")
trex_hunt.save

puts "no"
