# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Destroying existing data...'

# Destroy existing records to start fresh
# User.destroy
# Class.destroy
# Schedule.destroy
# Booking.destroy
# Payment.destroy

puts 'Creating new data...'

# Generate fake data for users
10.times do
  User.create!(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password_digest: 'password'
  )
  puts "Created user"
end

# Generate fake data for classes
10.times do
  Class.create!(
    class_name: Faker::Educator.course,
    description: Faker::Lorem.paragraph,
    duration: Faker::Number.between(from: 30, to: 120),
    capacity: Faker::Number.between(from: 5, to: 30)
  )
  puts "Class Created"
end


# Generate fake data for schedules
10.times do
  Schedule.create!(
    class_id: Faker::Number.between(from: 1, to: 10),
    day_of_week: Faker::Number.between(from: 1, to: 7),
    start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  )
  puts "SChedules Created"
end

# Generate fake data for bookings
20.times do
  Booking.create!(
    user_id: Faker::Number.between(from: 1, to: 10),
    class_id: Faker::Number.between(from: 1, to: 10),
    date: Faker::Time.between(from: Date.now - 1, to: Date.now),
    time: Faker::Time.between(from: Time.now - 1, to: Time.now)
  )
  puts "Bookings Created"
end

# Generate fake data for payments
20.times do
  Payment.create!(
    transaction_id: Faker::Alphanumeric.alphanumeric(number: 10),
    amount: Faker::Number.decimal(l_digits: 2),
    status: Faker::Boolean.boolean,
    user_id: Faker::Number.between(from: 1, to: 10),
    booking_id: Faker::Number.between(from: 1, to: 20),
    payment_method: Faker::Bank.name
  )
  puts "Payments Created"
end


puts 'Data creation complete!'