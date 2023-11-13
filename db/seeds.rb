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
  {:title => 'The Kiss',
   :description => 'Description of Art 4 The Kiss.',
   :link => 'thekiss.jpg',
   :release_date => '31-Oct-1209'},
  {:title => 'The Scream',
   :description => 'Description 5.',
   :link => 'thescream.jpg',
   :release_date => '30-Sep-1208'},
  {:title => 'Night Watch',
   :description => 'Description 6.',
   :link => 'nightwatch.jpg',
   :release_date => '29-Jul-1207'},
  {:title => 'Monet Sunrise',
   :description => 'Description 7.',
   :link => 'monetsunrise.jpg',
   :release_date => '28-Jun-1206'},
  {:title => 'Meninas',
   :description => 'Description 8.',
   :link => 'meninas.jpg',
   :release_date => '27-May-1205'},
  {:title => 'Pearl Earring Girl',
   :description => 'Description 9.',
   :link => 'earringgirl.jpg',
   :release_date => '26-Apr-1204'},
  {:title => 'Arno Portrait',
   :description => 'Description 10.',
   :link => 'arnoportrait.jpg',
   :release_date => '25-Mar-1203'},
  {:title => 'Adam and God',
   :description => 'Description 11.',
   :link => 'adam.jpg',
   :release_date => '24-Feb-1202'},
  {:title => 'Boat Party',
   :description => 'Description 12.',
   :link => 'boatparty.jpg',
   :release_date => '23-Jan-1201'},
]

arts.each do |art|
  Art.create!(art)
end