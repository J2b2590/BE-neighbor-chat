# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



jeff = User.create(username: "myUsername")

animals = Room.create(name:"crazy Animals", description: "chat about animal and stuff")


Message.create(user: jeff, room: animals, content: 'this is a message to all my animals')