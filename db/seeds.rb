require 'faker'

Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

10.times { City.create!(city_name: Faker::Address.city) }

15.times do
  Dogsitter.create!(name: Faker::Name.first_name, city: City.all.sample)
end

20.times do
  Dog.create!(name: Faker::Name.first_name, city: City.all.sample)
end

40.times do
  city = City.all.sample
  Stroll.create!(
    date: Faker::Time.forward(days: 10),
    dogsitter: Dogsitter.where(city: city).sample || Dogsitter.all.sample,
    dog: Dog.where(city: city).sample || Dog.all.sample,
    city: city
  )
end