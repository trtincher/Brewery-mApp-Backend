# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Log.delete_all
puts 'Logs deleted'
Brewery.delete_all
puts 'Breweries deleted'
User.delete_all
puts 'Users deleted'


10.times do
Brewery.create([{index: Faker::Number.between(from:1000, to: 5000)}])
end
puts 'Breweries created'

10.times do
User.create(
    [{email: Faker::Internet.safe_email, password: 'FakePassword123!', password_confirmation:'FakePassword123!'}]
)
end
puts 'Users created'

20.times do
    Log.create([{
        user_id: Faker::Number.between(from: 1, to: 10),
        brewery_id: Faker::Number.between(from: 1, to: 10),
        favorite: Faker::Boolean.boolean,
        wishlist: Faker::Boolean.boolean,
        visited: Faker::Boolean.boolean
    }])
end
puts 'Logs created'

