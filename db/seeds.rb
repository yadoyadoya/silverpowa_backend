# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
topics = ["Who is the person who influenced your life the most?",
"Do you have a lost love?",
"Which new technology have you found most helpful in your life? Which do you find to be the most annoying?",
"Is there anything you have always wanted to tell somebody but never have?",
"Is there anything you regret not having asked your parents?",
"What was the happiest moment of your life?",
"What are you most proud of?",
"How did your experience in the military mold you as a person?",
"What are the most important lessons you've learned in life?",
"What is your earliest memory?",
"Did you receive an allowance as a child? How much? Did you save your money or spend it?",
"Who were your friends when you were growing up?",
"What was your favorite thing to do for fun (movies, beach, etc.)?",
"What was school like for you as a child? What were your best and worst subjects?",
"What school activities and sports did you participate in?",
"Do you remember any fads from your youth? Popular hairstyles? Clothing?",
"What world events had the most impact on you?",
"How would you like to be remembered?",
"Technology: How technology changed our world in the past 60 years.",
"Teachers: The influence teachers have had on your life. Most people have strong memories of one or more teachers.",
"The 1960s: What were they doing? Which songs were they singing? Which TV shows did they watch?",
"Nutrition: What was the food like in the past? Did people go on diets?",
"High-School Days: Were there bullies? How about drugs, gangs, nerds, peer pressure, rock & roll, cars?",
"Winter comforts: What are the best comforts of winter? Food, clothes, activities?",
"Vintage Hollywood Movies: Romantic movies, best thrillers, favourite stars.",
'Whats your childhood like?',
'How did you maintain your marriage relationship?',
'How did you educate your son?',
'How did you educate your grandson?',
'How did you make your career choice?']



Vote.delete_all
Recording.delete_all
User.delete_all

puts "now seeding"

10.times do
  user = User.create(email: Faker::Internet.email, password: 123456, nickname: Faker::StarWars.character, language: nil, avatar: "https://unsplash.it/200/200/?random\n", admin: false, gender: nil)
  recording = user.recordings.create(content: Faker::HowIMetYourMother.quote, topic: "#{topics.sample}" )
  user.votes.create(user: user, recording: recording, counter: Faker::Number.between(0,2010))
end

puts "seeding complete"




