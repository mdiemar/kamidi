# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
CSV.foreach(Rails.root.join('db/Videoliste.csv'), headers: false) do |row|
  
  Movie.create({
    title: row[1],
    subtitle: row[2],
    playtime: row[3],
    media: row[4],
    year: row[7],
    collection: row[8],
    comment: row[9]
  })
end
