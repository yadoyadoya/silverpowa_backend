# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
topics = ['How my childhood was',
'How I managed my marriage',
'How I brought up my children',
'My best memory',
'A place I like',
'A person who changed me',
'One regret I have',
'My earliest memory',
'How I met my partner']

Vote.delete_all
Recording.delete_all
User.delete_all

puts "now seeding"

10.times do
  user = User.create(email: Faker::Internet.email, password: 123456, nickname: Faker::StarWars.character, language: nil, avatar: "https://unsplash.it/200/200/?random\n", admin: false, gender: nil)
  # recording = user.recordings.create(content: "random_key_generated", topic: "#{topics.sample}" )
  # user.votes.create(user: user, recording: recording, counter: Faker::Number.between(0,2010))
end

puts "seeding complete"




