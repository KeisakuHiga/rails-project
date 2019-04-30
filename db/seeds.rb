# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Start of Seeding..."
User.destroy_all
10.times do
  params = {
    email: Faker::Internet.email,
    password: Faker::Internet.password
  }
  puts "Creating User: #{params[:email]}"
  user = User.new(params)
  user.save

  listings = rand(6)
  listings.times do
    params = {
      title: Faker::WorldCup.group,
      description: Faker::Lorem.paragraph,
      amount: Faker::Number.decimal(6, 2),
      user_id: user.id
    }
    puts "Creating listing: #{params[:title]}"
    listing = Listing.new(params)
    listing.save

    offers = rand(3)
    offers.times do
      params = {
        interest: Faker::Number.decimal(1, 2),
        description: Faker::Lorem.paragraph,
        user_id: user.id,
        listing_id: listing.id
      }
      puts "Creating offer: #{params[:interest]}"
      offer = Offer.new(params)
      offer.save
    end
  end
end

puts "Seeding Over"