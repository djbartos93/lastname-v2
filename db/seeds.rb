# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
case Rails.env
when "development"
  User.create(email: 'default@example.com', password: 'plzhackme', password_confirmation: 'plzhackme', admin: 'true')
when "production"
  User.create(email: 'default@example.com', password: 'plzhackme', password_confirmation: 'plzhackme', admin: 'true')
end
