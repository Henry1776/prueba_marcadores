# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bookmark.destroy_all
Category.destroy_all
Kind.destroy_all

bands = {
  yes: 'https://es.wikipedia.org/wiki/Yes_(banda)',
  gojira: 'https://www.gojira-music.com/',
  death: 'https://en.wikipedia.org/wiki/Death_(metal_band)',
  primus: 'https://en.wikipedia.org/wiki/Primus_(band)',
  porcupine:  'https://en.wikipedia.org/wiki/Porcupine_Tree'
}

movies = {
  "Stars Wars": 'https://es.wikipedia.org/wiki/Yes_(banda)',
  "The hining": 'https://www.gojira-music.com/',
  "Born of 4th of july": 'https://en.wikipedia.org/wiki/Death_(metal_band)',
  "Back to the future": 'tps://en.wikipedia.org/wiki/Primus_(band)',
  "It":  'https://en.wikipedia.org/wiki/Porcupine_Tree'
}

philosofy = {
  "Platon": 'https://es.wikipedia.org/wiki/Yes_(banda)',
  "Aristoteles": 'https://www.gojira-music.com/',
  "Socrates": 'https://en.wikipedia.org/wiki/Death_(metal_band)',
  "Seneca": 'tps://en.wikipedia.org/wiki/Primus_(band)',
  "Kant":  'https://en.wikipedia.org/wiki/Porcupine_Tree'
}

category = Category.create!(name: 'Progresivo')
kind = Kind.create!(name: 'Musica')

bands.each do |k, v|
  Bookmark.create!(kind_id: kind.id, category_id: category.id, title: k.to_s, url: v )
  puts "++++++++++++++++++++++++++++++++++++++++++++++++"
end

category = Category.create!(name: 'Cine')
kind = Kind.create!(name: 'Peliculas')

movies.each do |k, v |
  Bookmark.create!(kind_id: kind.id, category_id: category.id, title: k, url: v )
  puts "++++++++++++++++++++++++++++++++++++++++++++++++"
end

category = Category.create!(name: 'Filosofia')
kind = Kind.create!(name: 'Literatura')

philosofy.each do |k, v|
  Bookmark.create!(kind_id: kind.id, category_id: category.id, title: k, url: v )
  puts "++++++++++++++++++++++++++++++++++++++++++++++++"
end