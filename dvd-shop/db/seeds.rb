# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'

10.times do
  Movie.create!(
    title: Faker::Movie.title,
    year: Faker::Number.between(from: 1900, to: 2023),
    length: Faker::Number.between(from: 60, to: 300),
    director: Faker::Name.name,
    description: Faker::Lorem.paragraph,
    poster_url: Faker::Internet.url,
    category: Faker::Book.genre,
    discount: Faker::Boolean.boolean,
    female_director: Faker::Boolean.boolean
  )
end
