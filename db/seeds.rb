# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Start of Seeding..."
User.destroy_all
5.times do
  params = {
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    admin: false,
    user_type: [true, false].sample,
    mobile_number: Faker::Number.number(6),
    name: Faker::Games::Pokemon.name,
    address: Faker::Address.city,
    dob: Faker::Date.birthday(18, 65),
    bank_name: Faker::Creature::Animal.name,
    account_number: Faker::Number.number(6),
    bsb: Faker::Number.number(6),
    driver_id: Faker::Number.number(6)
  }
  puts "Creating User: #{params[:email]}"
  user = User.new(params)
  user.save

  listings = rand(5)
  listings.times do
    params = {
      title: Faker::Name.first_name,
      description: Faker::Lorem.paragraph,
      amount: Faker::Number.decimal(5, 2),
      user_id: user.id,
      status: [true, false].sample
    }
    puts "Creating listing: #{params[:title]}"
    listing = Listing.new(params)
    listing.save

    offers = rand(5)
    offers.times do
      params = {
        months: [1, 3, 6, 12, 18, 24, 36, 48, 60, 72].sample,
        interest: Faker::Number.decimal(1, 2),
        description: Faker::Lorem.paragraph,
        status: [true, false].sample,
        user_id: user.id,
        listing_id: listing.id
      }
      puts "Creating offer: #{params[:interest]}"
      offer = Offer.new(params)
      offer.save
    end
  end
end

puts 'Creating an admin user'
User.new({ :email => 'admin@admin.com.au', :password => 'password321', :password_confirmation => 'password321', :user_type => true, :admin => 'true'}).save

puts "Seeding Over"