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
   :description => 'The Mona Lisa is a half-length portrait painting by italian artist Leonardo da Vinci. Considered an archetypal masterpiece of the Italian Renaissance,[4][5] it has been described as "the best known, the most visited, the most written about, the most sung about, [and] the most parodied work of art in the world". The painting novel qualities include the subject enigmatic expression, monumentality of the composition, the subtle modelling of forms, and the atmospheric illusionism.',
   :link => 'monalisa.jpeg',
   :release_date => '01-Jan-1503'},
  {:title => 'The Starry Night',
   :description => 'The Starry Night is a piece by Vincent van Gogh. This mid-scale, oil-on-canvas painting is dominated by a moon- and star-filled night sky. It takes up three-quarters of the picture plane and appears turbulent, even agitated, with intensely swirling patterns that seem to roll across its surface like waves.',
   :link => 'starrynight.jpeg',
   :release_date => '02-Jun-1889'},
  {:title => 'Under the Wave off Kanagawa',
   :description => 'Katsushika Hokusai created the piece Under the Wave off Kanagawa, also called The Great Wave has became one of the most famous works of art in the world—and debatably the most iconic work of Japanese art. Hokusai cleverly played with perspective to make the grandest mountain appear as a small triangular mound within the hollow of the cresting wave',
   :link => 'tsunami.png',
   :release_date => '03-Dec-1831'},
  {:title => 'The Kiss (Der Kuss)',
   :description => 'The Kiss is an oil-on-canvas painting with added gold leaf, silver, and platinum by the Austrian Symbolist painter Gustav Klimt. It was painted at some point in 1907 and 1908 during the height of what was called his Golden Period.',
   :link => 'thekiss.jpg',
   :release_date => '04-Oct-1908'},
  {:title => 'The Scream',
   :description => 'The Scream is a composition created by Norwegian artist Edvard Munch in 1893. The Norwegian name of the piece is Skrik (Scream) and the German title under which it was first exhibited is Der Schrei der Natur (The Scream of Nature).',
   :link => 'thescream.jpg',
   :release_date => '05-Sep-1893'},
  {:title => 'The Night Watch',
   :description => 'Militia Company of District II under the Command of Captain Frans Banninck Cocq, also known as The Shooting Company of Frans Banning Cocq and Willem van Ruytenburch, but commonly referred to as The Night Watch (Dutch: De Nachtwacht), is a 1642 painting by Rembrandt van Rijn. It is in the collection of the Amsterdam Museum but is prominently displayed in the Rijksmuseum as the best-known painting in its collection.',
   :link => 'nightwatch.jpg',
   :release_date => '06-Jul-1642'},
  {:title => 'Impression, Sunrise',
   :description => 'Impression, Sunrise (French: Impression, soleil levant) is an 1872 painting by Claude Monet first shown at what would become known as the "Exhibition of the Impressionists" in Paris in April, 1874. The painting is credited with inspiring the name of the Impressionist movement.',
   :link => 'monetsunrise.jpg',
   :release_date => '07-Apr-1874'},
  {:title => 'Las Meninas',
   :description => 'Las Meninas (Spanish for The Ladies-in-waiting) is a 1656 painting in the Museo del Prado in Madrid, by Diego Velázquez, the leading artist of the Spanish Baroque. It has become one of the most widely analyzed works in Western painting for the way its complex and enigmatic composition raises questions about reality and illusion, and for the uncertain relationship it creates between the viewer and the figures depicted.',
   :link => 'meninas.jpg',
   :release_date => '08-May-1656'},
  {:title => 'Girl with a Pearl Earring',
   :description => 'Girl with a Pearl Earring is an oil painting by Dutch Golden Age painter Johannes Vermeer, dated c. 1665. Going by various names over the centuries, it became known by its present title towards the end of the 20th century after the earring worn by the girl portrayed there.',
   :link => 'earringgirl.jpg',
   :release_date => '09-Apr-1665'},
  {:title => 'Arnolfini Portrait',
   :description => 'The Arnolfini Portrait (or The Arnolfini Wedding, The Arnolfini Marriage, the Portrait of Giovanni Arnolfini and his Wife, or other titles) is a 1434 oil painting on oak panel by the Early Netherlandish painter Jan van Eyck. It forms a full-length double portrait, believed to depict the Italian merchant Giovanni di Nicolao Arnolfini and his wife, presumably in their residence at the Flemish city of Bruges.',
   :link => 'arnoportrait.jpg',
   :release_date => '10-Mar-1434'},
  {:title => 'The Creation of Adam',
   :description => 'The Creation of Adam (Italian: Creazione di Adamo) is a fresco painting by Italian artist Michelangelo, which forms part of the Sistine Chapels ceiling, painted circa 1508–1512. It illustrates the Biblical creation narrative from the Book of Genesis in which God gives life to Adam, the first man. The fresco is part of a complex iconographic scheme and is chronologically the fourth in the series of panels depicting episodes from Genesis.',
   :link => 'adam.jpg',
   :release_date => '11-Feb-1512'},
  {:title => 'The Boating Party',
   :description => 'The Boating Party is an oil painting by American artist Mary Cassatt created in 1893. It is also known under the titles La partie en bateau; La barque; Les canotiers; and En canot. Measuring nearly three by four feet, it is Cassatt’s largest and most ambitious painting. It has been in the Chester Dale Collection of the National Gallery of Art since 1963.',
   :link => 'boatparty.jpg',
   :release_date => '12-Jan-1893'},
  {:title => 'The Last Supper',
   :description => 'The Last Supper is a mural painting by the Italian High Renaissance artist Leonardo da Vinci, dated to circa 1495–1498. The painting represents the scene of the Last Supper of Jesus with the Twelve Apostles, as it is told in the Gospel of John – specifically the moment after Jesus announces that one of his apostles will betray him.',
   :link => 'thelastsupper.jpg',
   :release_date => '13-Jun-1498'},
  {:title => 'Liberty Leading the People',
   :description => 'Liberty leading the People is a painting by Eugène Delacroix commemorating the July Revolution of 1830, which toppled King Charles X. A woman of the people with a Phrygian cap personifying the concept of Liberty leads a varied group of people forward over a barricade and the bodies of the fallen, holding aloft the flag of the French Revolution – the tricolour, which again became Frances national flag after these events – in one hand and brandishing a bayonetted musket with the other.',
   :link => 'liberty.jpg',
   :release_date => '14-Sep-1830'},
  {:title => 'American Gothic',
   :description => 'American Gothic is a 1930 painting by Grant Wood in the collection of the Art Institute of Chicago. Wood was inspired to paint what is now known as the American Gothic House in Eldon, Iowa, along with "the kind of people [he] fancied should live in that house". It depicts a farmer standing beside his daughter – often mistakenly assumed to be his wife. The paintings name is a word play on the houses architectural style, Carpenter Gothic.',
   :link => 'americangothic.jpg',
   :release_date => '15-Mar-1930'},
  {:title => 'The Sleeping Gypsy',
   :description => 'The Sleeping Gypsy (French: La Bohémienne endormie) is an 1897 oil on canvas painting by the French Naïve artist Henri Rousseau (1844–1910). It is a fantastical depiction of a lion musing over a sleeping woman on a moonlit night. It is held by the Museum of Modern Art in New York City, to which it was donated by Mrs. Simon Guggenheim in 1939.',
   :link => 'sleepinggypsy.jpg',
   :release_date => '16-Apr-1897'},
]

arts.each do |art|
  Art.create!(art)
end