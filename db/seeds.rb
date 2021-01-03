# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Room.destroy_all
Message.destroy_all


jeff = User.create(username: "Jeff", password: "Pass", password_confirmation: "Pass")
sap =  User.create(username: "Mike", password: "NewPass", password_confirmation: "NewPass")
# logan = Room.create(name:"Logan Square", description: "WHAT COOL IN LOGAN SQUARE")
# wicker = Room.create(name:"Wicker Park", description: "WHAT COOL IN WICKER PARK")

# Message.create(user: jeff, room: logan, content: "")
# Message.create(user: sap, room: wicker, content: "")

chicagoNeighborhoods = ["Andersonville",
"Archer Heights",
"Ashburn",
# "Ashburn Estates",
# "Austin",
# "Avaondale",
# "Belmont Central",
# "Beverly",
# "Beverly Woods",
# "Brainerd",
# "Bridgeport",
# "Brighton Park",
# "Bronceville",
# "Bucktown",
# "Burnside",
# "Calumet Heights",
# "Canaryville",
# "Clearing",
# "Chatham",
# "Chinatown",
# "Cottage Grove Heights",
# "Cragin",
# "Dunning",
# "East Chicago",
# "Edison Park",
# "Edgebrook",
# "Edgewater",
# "Englewood",
# "Ford City",
# 'Gage Park',
# 'Galewood',
# 'Garfield Park',
# 'Garfield Ridge',
# 'Gold Coast',
# 'Grand Crossing',
# 'Gresham',
# 'Hamilton Park',
# 'Humboldt Park',
# 'Hyde Park',
# 'Jefferson Park',
# 'Kelvyn Park',
# 'Kenwood',
# 'Kilbourn Park',
# 'Lake Meadows',
# 'Lakeview',
# 'Lawndale',
# 'Lincoln Park',
# 'Lincoln Square',
# 'Little Village',
# 'Logan Square',
# 'Longwood Manor',
# 'Marquette Park',
# 'McKinley Park',
# 'Midway',
# 'Morgan Park',
# 'Montclare',
# 'Mount Greenwood',
# 'North Center',
# 'Norwood Park',
# 'Old Irving Park',
# 'Old Town',
# 'Park Manor',
# 'Pilsen',
# 'Princeton Park',
# 'Portage Park',
# 'Pullman',
# 'Ravenswood',
# 'River North',
# 'River West',
# 'Rodgers Park',
# 'Roscoe VIllage',
# 'Roseland',
# 'Sauganash',
# 'Schorsch Village',
# 'Scottsdale',
# 'South Chicago',
# 'South Deering',
# 'South Loop',
# 'South Shore',
# 'Streeterville',
# 'Tri-Taylor',
# 'Ukrainian Village',
# 'United Center',
# 'Uptown',
# 'Vittum Park',
# 'Washington Heights',
# 'West Elsdon',
# 'West Loop',
# 'West Pullman',
# 'Westlawn',
# 'Wicker Park',
# 'Woodlawn',
# 'Wrigleyville',
'Wrigtwood']

chicagoNeighborhoods.each do |room|

    data = []
    object = {
        "name": "#{room}",
        "description": " "
    }
    # data <<  Room.create!({name: "#{room}"})  
    data << object
    Room.create(data)
end