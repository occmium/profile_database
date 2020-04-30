# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
profile_one = Profile.create!(name: "IVAN", surname: "IVANOV", city: "MOSKVA", company: "PURRWEB")
profile_two = Profile.create!(name: "PETR", surname: "PETROV", city: "LENINGRAD", company: "LUXOFT")
profile_three = Profile.create!(name: "SIDR", surname: "SIDOROV", city: "HABAROVSK", company: "GOOGLE")

3.times do |_|
  SyncRequest.create!(profile: profile_one)
end
SyncRequest.create!(profile: profile_two)
# SyncRequest.create!(profile: profile_three)
