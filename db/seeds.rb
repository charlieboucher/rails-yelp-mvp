# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

15.times do
  restaurant = Restaurant.new(
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    category: %w(french japanese chinese belgian italian).sample
    )
  restaurant.save
  8.times do
    review = Review.new(
      content: Faker::HowIMetYourMother.quote,
      rating: (2..5).to_a.sample,
      restaurant: restaurant
    )
    review.save
  end
end
