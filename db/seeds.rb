# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

division_list = [
  ["Division1", "Advertising"],
  ["Division2", "Marketing"],
  ["Division3", "IT"],
  ["Division4", "Sales"],
  ["Division6", "Advertising"]
]

division_list.each do |name, duty|
  Division.create(name: name, duty: duty)
end