# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  Author.create!(name: Forgery(:name).first_name)
end

30.times do
  Post.create!(title: Forgery(:lorem_ipsum).title, excerpt: Forgery(:lorem_ipsum).paragraph, body: Forgery(:lorem_ipsum).paragraphs, author: Author.find(Random.rand(1..5)))
end