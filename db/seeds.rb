# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recording.delete_all
User.delete_all
ben = User.create(email: "benoit@mrejen.com", password: "123456")
harrison = User.create(email: "elephantonaleaf@github.com", password: "123456")

10.times do
puts "users being generated"
user = User.create!(email: Faker::Internet.email, password: "123456", birthday: Faker::Date.birthday(50, 108))
puts "users generated."
puts "recordings being generated"
recording = Recording.create(content: Faker::HowIMetYourMother.quote, duration: 60)
puts "recordings generated."
puts "votes being generated"
vote = Vote.create(counter: Faker::Number.number(10))
puts "votes generated."

end

