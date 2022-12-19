# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "cleaning db"
Book.destroy_all
Reservation.destroy_all

puts 'cleaning user'
User.destroy_all

puts 'creating user'

puts 'creating user'
user1 = User.create(
  username: "Ana",
  email: "anne@openbooks93.me",
  password: "1234567",
  city: "Montreuil",
  image_url: "https://avatars.githubusercontent.com/u/109987907?v=4"
)

user2 = User.create(
  username: "Fabi",
  email: "fabio@openbooks93.me",
  password: "1234567",
  city: "Saint-Maur",
  image_url: "https://avatars.githubusercontent.com/u/109987907?v=4"
)

users = [user1, user2, user3]


puts 'creating book'
