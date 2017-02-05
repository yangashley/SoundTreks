# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  user_info = {
    provider: "spotify",
    uid: Faker::Lorem.word,
    name: Faker::Name.name
    }
  User.create!(user_info)
end

5.times do
  location_info = {
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
    }
  Location.create!(location_info)
end

5.times do
  playlist_info = {
    title: Faker::Lorem.word,
    creator_id: (1..5).to_a.sample,
    spotify_id: Faker::Lorem.characters(10),
    }
  Playlist.create!(playlist_info)
end

5.times do
  soundtrek_info = {
    description: Faker::Lorem.sentence,
    title: Faker::Lorem.word,
    location_id: (1..5).to_a.sample,
    playlist_id: (1..5).to_a.sample,
    }
  SoundTrek.create!(soundtrek_info)
end





