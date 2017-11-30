# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Vote.delete_all
Recording.delete_all
User.delete_all

puts "now seeding"

3.times do
  user = User.create(email: Faker::Internet.email, password: "123456", birthday: Faker::Date.birthday(50, 108))
  recording = user.recordings.create(content: Faker::HowIMetYourMother.quote)
  user.votes.create(user: user, recording: recording, counter: Faker::Number.number(5))
end

puts "seeding complete"
