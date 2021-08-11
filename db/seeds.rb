# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the DB"

Garden.destroy_all if Rails.env.development?

puts "Creating Gardens"

Garden.create( name: "Heaven", banner_url: "https://images.unsplash.com/photo-1550948390-6eb7fa773072?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1353&q=80")
Garden.create(name: "Space", banner_url: "https://images.unsplash.com/photo-1538370965046-79c0d6907d47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80")

tags = %w(flower cactus roses carnivore vegetable)

tags.each do |tag|
  Tag.create(name: tag)
end

puts "Done with the Seed"
