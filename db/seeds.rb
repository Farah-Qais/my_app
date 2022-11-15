require 'faker'

puts "Seeding..."
rand(2..5).times do |integer|
 Car4.create(
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    vin:Faker::Vehicle.vin,
    color: Faker::Vehicle.color) 
rand(2..5).times do |integer|
  Book2.create(
    title: Faker::Book.title,
    author: Faker::Book.author
)
rand(2..5).times do |integer|
Device.create(
    serial:Faker::Device.serial,
    version: Faker::Device.version,
    platform: Faker::Device.platform
)
end
end
end

puts "Done seeding..."

