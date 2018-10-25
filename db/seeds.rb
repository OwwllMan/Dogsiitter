# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

50.times do
  a = Faker::Address.city
  City.create(name: a)
end

100.times do
  a = Faker::HowIMetYourMother.character
  Dogsitter.create(name: a, city_id: rand(50))
end


100.times do
  a = Faker::Dog.name
  Dog.create(name: a, city_id: rand(50))

end

300.times do
	Stroll.create(dogsitter_id: rand(100), dog_id: rand(100))
end
