require "faker"
5.times do
  restaurant = Restaurant.new({
  name: Faker::Music::RockBand.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.phone_number,
  category: Restaurant::CATEGORY.sample
 })
 restaurant.save

end
