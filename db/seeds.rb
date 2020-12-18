# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'rest-client'
# require 'json'
# require 'pry'

# api_json = RestClient.get("https://data.cityofchicago.org/resource/y7qa-tvqx.json")

# results = JSON.parse(api_json)["results"]

# results.each do |neighborhood|
#     data = []
#     object = {
#         "title": neighborhood["title"],
#         "image_src": neighborhood["image"],
#         "rating": rand(25..200)
#     }
#     data << object
#     Room.create!(data)
# end


User.destroy_all
Room.destroy_all
Message.destroy_all


jeff = User.create(username: "JEFF")
sap =  User.create(username: "YA BOI MIKE")
logan = Room.create(name:"Logan Square", description: "WHAT COOL IN LOGAN SQUARE")
wicker = Room.create(name:"Wicker Park", description: "WHAT COOL IN WICKER PARK")

Message.create(user: jeff, room: logan, content: "")
Message.create(user: sap, room: wicker, content: "")