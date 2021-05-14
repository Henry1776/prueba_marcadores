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


c = Category.create!(name: 'Progresivo')
k = Kind.create!(name: 'Musica')

20.times do |i|
  Bookmark.create!(kind_id:k.id, category_id:c.id, name: 'Yes', url: 'https://es.wikipedia.org/wiki/Yes_(banda)' )
  puts "++++++++++++++++++++++++++++++++++++++++++++++++"
end
