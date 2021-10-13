require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all
10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Categoriable::CATEGORIES.sample
  )
end
puts 'Finished!'
