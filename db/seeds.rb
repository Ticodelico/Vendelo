# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.create(name: "Consolas")
Category.create(name: "Laptops")
Category.create(name: "Ropa")
Category.create(name: "Celulares")
Category.create(name: "Relojes")
User.create(
  email: "admin@vendelo.com",
  username: "vendelo",
  password: "vendelo12345",
  boolean: true
)
