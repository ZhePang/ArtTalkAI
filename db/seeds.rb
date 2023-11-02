# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


## For arttalkAI
arts = [
  {:title => 'Mona Lisa',
   :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
   :link => 'monalisa.jpeg',
   :release_date => '01-Jan-1503'},
  {:title => 'Starry Night',
   :description => 'Description of Art 2.',
   :link => 'starrynight.jpeg',
   :release_date => '06-Jun-1789'},
  {:title => 'Tsunami',
   :description => 'Description of Art 3, Tsunami. Blah blah blah.',
   :link => 'tsunami.png',
   :release_date => '31-Dec-800'},
]

arts.each do |art|
  Art.create!(art)
end