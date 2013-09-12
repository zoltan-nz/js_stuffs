# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1000.times do
  Customer.create!(name: Forgery(:name).full_name, email: Forgery(:internet).email_address, correspondence: [true, false].sample, note: Forgery::LoremIpsum.sentences(3, random: true))
end