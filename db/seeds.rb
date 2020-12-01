# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying seeds"

Plant.destroy_all
User.destroy_all

puts "Creating seeds"

user_1 = User.create!(email: "bob@gmail.com", password: "password")
user_2 = User.create!(email: "ana@gmail.com", password: "password")

plant_1 = Plant.create!(name: "Baobab", description: "Great tree, awesome for parties and fun", address: "Gracia", price: 7, user: user_1)
plant_2 = Plant.create!(name: "Jacaranda", description: "A lot of flowers, will make your street happy", address: "Mexico", price: 9, user: user_2)
