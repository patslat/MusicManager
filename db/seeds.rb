# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Band.create(name: "John Coltrane")
Band.create(name: "Miles Davis")

Album.create(name: "Blue Train", recording: "Studio", band_id: 1)

Track.create(name: "Lazy Bird", album_id: 1, bonus: "Regular",
  lyrics: "doo dOOOO da daaaaa doo dOODOOOO dee deee BUM BUM BAA BAA"
)

Note.create(body: "The lyrics are off", track_id: 1)