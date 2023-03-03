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

daniel = User.create!(email: "danielpippin986@gmail.com", password: "123456", first_name: "Daniel", last_name: "Pippin")
luca = User.create!(email: "lucaiscool@gmail.com", password: "12345678", first_name: "Luca", last_name: "Bonaparte")

berlin_wall = Event.create!(user_id: User.all.sample.id, category: "politics", era: "late modern", name: "fall of Berlin wall", year: "1989", price: 100, description: "The fall of the Berlin Wall on November 9, 1989, marked the end of the Cold War and the reunification of Germany.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/berlin_wall_mrdcib.jpg")
berlin_wall.photo.attach(io: file, filename: "berlin wall.jpeg", content_type: "image/jpeg")
berlin_wall.save

moon_landing = Event.create!(user_id: User.all.sample.id, category: "science", era: "late modern", name: "moon Landing", year: "1969", price: 300, description: "On July 20, 1969, Neil Armstrong and Buzz Aldrin became the first humans to land on the moon.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/moon_landing_yp7avm.jpg")
moon_landing.photo.attach(io: file, filename: "moon landing.jpeg", content_type: "image/jpeg")
moon_landing.save

giza = Event.create!(user_id: User.all.sample.id, category: "architecture", era: "ancient", name: "The Pyramids of Giza", year: "2250 bc", price: 150, description: "The Pyramid of Giza in Egypt, one of the ancient Seven Wonders of the World, was built over 20 years by thousands of laborers using limestone blocks.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678044/timescape/piramit_of_giza_pmih4c.jpg")
giza.photo.attach(io: file, filename: "giza.jpeg", content_type: "image/jpeg")
giza.save

woodstock = Event.create!(user_id: User.all.sample.id, category: "people", era: "late modern", name: "woodstock", year: "1967", price: 420, description: "Woodstock was a three-day music festival in August 1969 that attracted over 400,000 people and became a defining moment of the counterculture movement.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/woodstock_fmyck1.jpg")
woodstock.photo.attach(io: file, filename: "woodstock.jpeg", content_type: "image/jpeg")
woodstock.save

einstein = Event.create!(user_id: User.all.sample.id, category: "science", era: "late modern", name: "a lecture with Albert Einstein", year: "1938", price: 400, description: "Albert Einstein's lectures were known for their clarity and simplicity, and he spoke on topics ranging from relativity to philosophy.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/einstein_lecture_dz3ljp.jpg")
einstein.photo.attach(io: file, filename: "einstein .jpeg", content_type: "image/jpeg")
einstein.save

trex_hunt = Event.create!(user_id: User.all.sample.id, category: "nature", era: "prehistory", name: "Pet a T-Rex", year: "65000000 bc", price: 200, description: "A formidable and dangerous dinosaur, but they also love to be petted.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1677678043/timescape/t-rex_hunt_b7tjat.jpg")
trex_hunt.photo.attach(io: file, filename: "trex_hunt .jpeg", content_type: "image/jpeg")
trex_hunt.save

puts "no"
