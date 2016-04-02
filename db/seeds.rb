# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  Link.create!(
  title: Faker::Book.title,
  url:   Faker::Internet.url,
  )
end

1000.times do
  Vote.create!(
  link_id: Link.find((1..20).to_a.sample).id
  )
end
