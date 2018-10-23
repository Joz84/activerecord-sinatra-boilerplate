require "faker"

100.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::Address.city,
    rating: rand(0..5)
  )
  restaurant.save!
end

puts "Create #{Restaurant.count} restaurants"
