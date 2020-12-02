# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Destroying seeds"

Booking.destroy_all
Plant.destroy_all
User.destroy_all


puts "Creating seeds"

user_1 = User.create!(email: "bob@gmail.com", password: "password")
user_2 = User.create!(email: "ana@gmail.com", password: "password")

plant_1 = Plant.create!(
  name: "Jade",
  description: "Commonly known as lucky plant. Succulent plant with small pink or white flowers that is native to the KwaZulu-Natal and Eastern Cape provinces of South Africa, and Mozambique.",
  address: "Carrer de Jorge Manrique, s/n, 08035 Barcelona",
  price: 7,
  user: user_1
  )
  file_1 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/1.jpg')
  plant_1.photo.attach(io: file_1, filename: '1.jpg', content_type: 'image/jpg')

plant_2 = Plant.create!(
  name: "Pothos",
  description: "Also called Devil's Ivy. Considered one of the most effective indoor air purifiers for removing common toxins.",
  address: "Carrer de Vallirana, 29, 08006 Barcelona",
  price: 9,
  user: user_2
  )
  file_2 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/2.jpg')
  plant_2.photo.attach(io: file_2, filename: '2.jpg', content_type: 'image/jpg')

plant_3 = Plant.create!(
  name: "Monstera deliciosa",
  description: "Mexican plant from the Araceae family. Its name comes from the Latin meaning “abnormal” because of its odd-looking, perforated leaves that are often punched through with holes.",
  address: "Carrer de Jaume Martí, 31, 08042 Barcelona",
  price: 7,
  user: user_1,
  )
  file_3 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/3.jpg')
  plant_3.photo.attach(io: file_3, filename: '3.jpg', content_type: 'image/jpg')

plant_4 = Plant.create!(
  name: "Mass cane",
  description: "Also known as 'corn plant'. It has stalky stems and long, green leaves with light-yellow/light-green stripes running through them.",
  address: "Av. del Tibidabo, 31, 08022 Barcelona",
  price: 9,
  user: user_2
  )
  file_4 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/4.jpg')
  plant_4.photo.attach(io: file_4, filename: '4.jpg', content_type: 'image/jpg')

plant_5 = Plant.create!(
  name: "Peace lily",
  description: "Peace lilies are tropical, evergreen plants that thrive on the forest floor, where they receive dappled sunlight and consistent moisture.",
  address: "Carrer de Vilardell, 18, 08014 Barcelona",
  price: 7,
  user: user_1
  )
  file_5 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/5.jpg')
  plant_5.photo.attach(io: file_5, filename: '5.jpg', content_type: 'image/jpg')

plant_6 = Plant.create!(
  name: "Spider plant",
  description: "Also known as airplane plant",
  address: "Carrer de Vila i Vilà, 48, 08004 Barcelona",
  price: 9,
  user: user_2
  )
  file_6 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/6.jpg')
  plant_6.photo.attach(io: file_6, filename: '6.jpg', content_type: 'image/jpg')

plant_7 = Plant.create!(
  name: "Rubber plant",
  description: "Rubber trees, formally ficus elastica, can be enjoyed as either medium-sized house plants or grown to become focal point, beautiful indoor trees.",
  address: "Carrer de Guifré, 664, 08918 Badalona, Barcelona",
  price: 7,
  user: user_1
  )
  file_7 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/7.jpg')
  plant_7.photo.attach(io: file_7, filename: '7.jpg', content_type: 'image/jpg')

plant_8 = Plant.create!(
  name: "Zanzibar gem",
  description: "Has been hailed as being ‘almost indestructible’. Native to Africa, it has deep, green glossy leaves and is able to survive a long period without water.",
  address: "Carrer de la Infanta Isabel, 4, 08022 Barcelona",
  price: 9,
  user: user_2
  )
  file_8 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/8.jpg')
  plant_8.photo.attach(io: file_8, filename: '8.jpg', content_type: 'image/jpg')

plant_9 = Plant.create!(
  name: "Maidenhair Fern",
  description: "Feathery, light green leaves with soft shiny stems and they make a great hanging plant.",
  address: "Passatge de la Concepció, 5, 08008 Barcelona",
  price: 7,
  user: user_1
  )
  file_9 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/9.jpg')
  plant_9.photo.attach(io: file_9, filename: '9.jpg', content_type: 'image/jpg')

plant_10 = Plant.create!(
  name: "Anthurium Andraeanum",
  description: "Originally from Columbia and feature long, dark-green leathery leaves and produce beautiful, red, pink and white heart-shaped ‘flowers’ that can last for weeks.",
  address: "Carrer del Milanesat, 19, 08017 Barcelona",
  price: 9,
  user: user_2
  )
  file_10 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606907915/PlantLord/10.jpg')
  plant_10.photo.attach(io: file_10, filename: '10.jpg', content_type: 'image/jpg')

plant_11 = Plant.create!(
  name: "Cactus",
  description: "A cactus is a member of the plant family Cactaceae.",
  address: "Carrer del Torrent de l'Olla, 23, 08012 Barcelona",
  price: 7,
  user: user_1
  )
  file_11 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606907306/PlantLord/11.jpg')
  plant_11.photo.attach(io: file_11, filename: '11.jpg', content_type: 'image/jpg')


plant_12 = Plant.create!(
  name: "Chinese evergreen",
  description: "Chinese evergreens prefer well-drained soil. Provide them with medium to low indirect light, and with a little extra humidity. ",
  address: "Carrer d'Enric Granados, 55, 08008 Barcelona",
  price: 9,
  user: user_2
  )
  file_12 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/12.jpg')
  plant_12.photo.attach(io: file_12, filename: '12.jpg', content_type: 'image/jpg')

