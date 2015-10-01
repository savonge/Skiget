# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'


city = ["France","Austria","Switzerland"]


100.times do

  user = User.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    stname: Faker::Address.street_name,
    stnumber: Faker::Address.building_number,
    city: city.sample,
    zipcode: Faker::Address.zip,
    tel: Faker::PhoneNumber.phone_number
    })

  user.save!
end

sizes = ["S","M","L"]
gear_type = ["Skis","Boots","Goggles","Sticks","Snowboard","Suit"]
brand = ["Salomon","The North Face","Nordica","Athalon","Sorel"]

50.times do |index|

  gear = Gear.new({
    item: gear_type.sample,
    description: Faker::Lorem.sentence(3, true),
    size: sizes.sample,
    brand: brand.sample,
    price: Faker::Commerce.price,
    user_id: rand(1..20)
    # user_id: User.find(index + 1)

    })

  gear.save!

end
