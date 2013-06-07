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
Album.create(name: "Kind of Blue", recording: "Studio", band_id: 2)

Track.create(name: "Lazy Bird", album_id: 1, bonus: "Regular",
  lyrics: "doo dOOOO da daaaaa doo dOODOOOO dee deee BUM BUM BAA BAA"
)

Track.create(name: "Freddie Freeloader", album_id: 2, bonus: "Regular",
  lyrics: "baaa baaaaaaa\n baaa baaaaaaaa\n ba baaa ba baaa\n baaaaa baaaaa"
)

User.create(email: "p@g.com", password_digest: Digest::SHA2.base64digest("1"),
  admin: true)
User.create(email: "f@g.com", password_digest: Digest::SHA2.base64digest("1"),
  admin: false)

Note.create(body: "The lyrics are off", track_id: 1, user_id: 1)
Note.create(body: "No they aren't", track_id: 1, user_id: 2)
Note.create(body: "They're supposed to be do doo doo dooo dooo daa da daaaa da daaaaaa daa doo daa daa daaaaaaaaaa",
  track_id: 1, user_id: 1)
Note.create(body: "Wat r u doin? STAHP", track_id: 1, user_id: 2)
Note.create(body: "NO U", track_id: 1, user_id: 1)
