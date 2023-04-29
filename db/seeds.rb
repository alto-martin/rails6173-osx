# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# name = Faker::Name.unique.name

begin
  5.times do |i|
    name = Faker::Movies::StarWars.character
    Board.create(name: name)
    2.times do |j|
      Post.create(title: "#{name} Quote #{j+1}", content: Faker::Movies::StarWars.quote)
    end
  end
  puts "Seed success!"
rescue
  puts "Seed fail!"
  puts Board.errors if Board.errors.any?
  puts Post.errors if Post.errors.any?
end
