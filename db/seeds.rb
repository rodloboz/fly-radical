# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'byebug'
# define an hash of sports where each category is a key
# an an array of the sport for each category is the value
# for example:

sports_hash = {water: ["surfing", "bodyboarding", "stand up paddle surfing", "windsurfing", "kitesurfing", "wakeboarding", "kayaking", "rafting", "jet skiing", "water skiing"],
  snow: ["snowboarding", "skiing", "ice skating"],
  air: ["bungee jumping", "sky diving", "paragliding", "hang gliding"],
  other: ["horse riding", "rock climbing"]}
# loop through each key/value pair of the hash
sports_hash.each do |key, array|
  # creates a new category by converting key to string
  # and passing it as the category name
  # saves new category object in a variable
  category = Category.create(name: key.to_s)
  #look through the array of sports for that category
  array.each do | sport|
    #creates new sport in the category object
    category.sports.create(name: sport)
  end
end

user = User.create(email: "user@surfschool.com", password: "123456")

school = user.schools.create(name: "surfschool", about: "This is a surfschool", address: "rua do beta-i", city: "Lisbon", website: "surfschool-lisbon.pt", email: "contact@surfschool.com", phone: "1234967" )

names = ["learn surf", "learn rock climbing", "ice skating", "beginner snowboarding", "expert windsurfing", "intermediate kitesurfing", "one day kayaking"]

6.times do
  lesson = school.lessons.new(
    name: names.shift,
    sport_id: rand(1..19),
    description: Faker::Company.catch_phrase,
    equipment_provided: Faker::Music.instrument,
    equipment_required: Faker::Music.instrument,
    difficulty: ["beginner","ok","expert"].sample,
    cancellation_policy: "48h" ,
    )
    # byebug
    lesson.save!
end
