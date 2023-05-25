# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Patient.create(first_name: ,last_name: , diagnosis: , born_on:)

require 'faker'

illnesses = [
    "Common cold",
    "Influenza",
    "Pneumonia",
    "Bronchitis",
    "Strep throat",
    "Sinusitis",
    "Urinary tract infection",
    "Conjunctivitis",
    "Migraine",
    "Allergies",
    "Asthma",
    "Diabetes",
    "Hypertension",
    "Arthritis",
    "Osteoporosis"
  ]


10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  diagnosis = illnesses.sample
  born_on = Faker::Date.birthday(min_age: 18, max_age: 65)

  Patient.create(
    first_name: first_name,
    last_name: last_name,
    diagnosis: diagnosis,
    born_on: born_on
  )
end