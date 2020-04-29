# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profile.create!(name: "IVAN", surname: "IVANOV", city: "MOSKVA", company: "PURRWEB")
Profile.create!(name: "PETR", surname: "PETROV", city: "LENINGRAD", company: "LUXOFT")
Profile.create!(name: "SIDR", surname: "SIDOROV", city: "HABAROVSK", company: "GOOGLE")
