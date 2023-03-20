require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

LANGUAGES = [
  'Ruby',
  'Python',
  'JavaScript',
  'Java',
  'C++',
  'PHP',
  'Swift',
  'TypeScript',
  'Go',
  'Scala'
]

20.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  skill = LANGUAGES.sample(3)
  portfolio = Faker::Internet.url
  pricing = rand(10..100)
  user_id = 1

  Freelancespec.create!(
    first_name: first_name,
    last_name: last_name,
    skill: skill,
    portfolio: portfolio,
    pricing: pricing,
    user_id: user_id
  )
end
