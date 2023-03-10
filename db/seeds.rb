# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

puts "seeding users"

User.create(first_name: 'Test', last_name: 'Test', email: 'test@example.net', password: 'testpassword')

puts "seeding clubs"

Club.create(name: "Cooking Club", description: Faker::Lorem.paragraph, meeting_time: "Tuesdays from 2:30-4:30", meeting_area: "Cafeteria", max_membership: 30)
Club.create(name: "D&D/RPG meetup", description: Faker::Lorem.paragraph, meeting_time: "Fridays 4-7pm", meeting_area: "Room 203", max_membership: 10)
Club.create(name: "Book Club", description: Faker::Lorem.paragraph, meeting_time: "First Wednesday of the month, from 3-5", meeting_area: "Library", max_membership: 20)
Club.create(name: "Drama club", description: Faker::Lorem.paragraph, meeting_time: "TBA", meeting_area: "Auditorium", max_membership: 60)
Club.create(name: "Photography Club", description: Faker::Lorem.paragraph, meeting_time: "Every other Monday from 3:30-5", meeting_area: "Cafeteria", max_membership: 18)

puts "seeding membership"
Membership.create(club_id: 1, user_id: 1)
Membership.create(club_id: 3, user_id: 1)
Membership.create(club_id: 4, user_id: 1)

puts "done seeding"