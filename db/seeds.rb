# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Event.destroy_all
User.destroy_all

daniel = User.create!(email: "danielpippino986@gmail.com", password: "123456")
luca = User.create!(email: "lucaiscool@gmail.com", password: "12345678")


events = Event.create([{
  user_id: 1,
  category: "late modern",
  era: "politics",
  name: "fall of berlin wall",
  year: "1989",
  price: 100,
  description: "fall of berlin wall",
},


{
  user_id: 1,
  category: "nature",
  era: "prehistory",
  name: "trex gunt",
  year: "2000000 bc",
  price: 200,
  description: "hunting a trex",
},


{
  user_id: 2,
  category: "architecture",
  era: "ancient",
  name: "creation on the pyramids of gizah",
  year: "2250 bc",
  price: 150,
  description: "watch the pyramids of gizah being built",
},


{
  user_id: 2,
  category: "science",
  era: "late modern",
  name: "moonlanding",
  year: "1969",
  price: 300,
  description: "join the first moonlanding",
},

{
  user_id: 1,
  category: "people",
  era: "late modern",
  name: "woodstock",
  year: "1967",
  price: 169,
  description: "Be part of the summer of love",
},

{
  user_id: 2,
  category: "science",
  era: "late modern",
  name: "a lecture with albert einstein",
  year: "1938",
  price: 400,
  description: "Spend a day with the smartest human of all time"
}])
