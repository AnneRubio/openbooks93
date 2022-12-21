# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require open_uri to open img Internet
require "open-uri"

# cleaning db
puts "cleaning db"
Book.destroy_all
Reservation.destroy_all
puts 'cleaning user'
User.destroy_all

# creating seed

puts 'creating user'
user1 = User.create!(
  username: "Ana",
  email: "anne@openbooks93.me",
  password: "1234567",
  city: "Montreuil",
  avatar: "https://avatars.githubusercontent.com/u/109987907?v=4"
)

user2 = User.create!(
  username: "Fabi",
  email: "fabi@openbooks93.me",
  password: "1234567",
  city: "Lyon",
  avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Eva_Mendes_2009.jpg/390px-Eva_Mendes_2009.jpg"
)

users = [user1, user2]

puts 'creating books'

book1 = Book.create(
  title: "4 3 2 1",
  author: "Paul Auster",
  category: "Best Sellers",
  description: "4 3 2 1 follows all four Fergusons from their births to a Jewish family on March 3, 1947, in Newark, N.J. (Auster himself was born in the same city, exactly one month earlier.) Each chapter is divided into four numbered sections, corresponding with each different version of Ferguson",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book1.photo.attach(io: URI.open("https://images2.medimops.eu/product/64c882/M00571324649-large.jpg"), filename: "book1.jpg", content_type: 'image/jpg')
book1.save

book2 = Book.create(
  title:"The big Four",
  author: "Agatha Christie",
  category: "Crimes",
  description: "Poirot investigates with his old friends Hastings, Japp and Lemon, helped by a reporter and a minor actress, but the quartet must soon fight a dangerous battle with the Big Four, a secret society manipulating for their own personal chess game a great number of international celebrities",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book2.photo.attach(io: URI.open("https://images2.medimops.eu/product/469302/M0000616918X-large.jpg"), filename: "book2.jpg", content_type: 'image/jpg')
book2.save

book3 = Book.create(
  title:"Robot",
  author: "Isaac Asimov",
  category:"Sci Fi",
  description: "A collection of nine short stories that that imagines the development of “positronic” (humanlike, with a form of artificial intelligence) robots and wrestles with the moral implications of the technology.",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book3.photo.attach(io: URI.open("https://images2.medimops.eu/product/613f99/M00586057242-large.jpg"), filename: "book3.jpg", content_type: 'image/jpg')
book3.save

book4 = Book.create(
  title:"Bel Ami",
  author: "Guy de Maupassant",
  category: "Classics",
  description: "The story chronicles journalist Georges Duroy's corrupt rise to power from a poor former cavalry NCO in France's African colonies, to one of the most successful men in Paris, most of which he achieves by manipulating a series of powerful, intelligent, and wealthy women",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book4.photo.attach(io: URI.open("https://images2.medimops.eu/product/9b2b02/M02290173495-large.jpg"), filename: "book4.jpg", content_type: 'image/jpg')
book4.save

book5 = Book.create(
  title: "Don Quixote",
  author: "Miguel de Cervantes",
  category: "Classics",
  description: "Don Quixote is a middle-aged gentleman from the region of La Mancha in central Spain. Obsessed with the chivalrous ideals touted in books he has read, he decides to take up his lance and sword to defend the helpless and destroy the wicked",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book5.photo.attach(io: URI.open("https://images2.medimops.eu/product/b89281/M00140449094-large.jpg"), filename: "book5.jpg", content_type: 'image/jpg')
book5.save

book6 = Book.create(
  title: "Dirt Town",
  author: "Hayley Scrivenor",
  category: "Crimes",
  description: "Detective Sergeant Sarah Michaels begins her investigation of the disappearance of twelve-year-old Esther Bianchi from her home in the small rural Australian town of Durton. For Esther's mother Constance this is the worst thing that could possibly happen. But as the investigation continues, things get worse still. Esther's best friend Ronnie is doing her own investigation.",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book6.photo.attach(io: URI.open("https://images2.medimops.eu/product/976355/M01529080274-large.jpg"), filename: "book6.jpg", content_type: 'image/jpg')
book6.save

book7 = Book.create(
  title: "1984",
  author: "George Orwell",
  category: "Sci Fi",
  description: "In Nineteen Eighty-Four, the world is separated into three superpowers: Oceania, Eurasia, and Eastasia, which exist in a constant state of war with each other. The novel is based in Oceania. Great Britain is now referred to as Airstrip One. The Party dominates every aspect of life in the workplace and family home. The population is controlled through mass surveillance and propaganda. People who dissent are 'disappeared', or erased from history. Every citizen lives under the watchful eye of Big Brother, the personification of the Partys control systems",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book7.photo.attach(io: URI.open("https://images2.medimops.eu/product/89cd27/M0207036822X-large.jpg"), filename: "book7.jpg", content_type: 'image/jpg')
book7.save

book8 = Book.create(
  title: "Crime and Punishment",
  author: "Fiodor Dostoïevski",
  category: "Classics",
  description: "Crime and Punishment follows the mental anguish and moral dilemmas of Rodion Raskolnikov, an impoverished ex-student in Saint Petersburg who plans to kill an unscrupulous pawnbroker, an old woman who stores money and valuable objects in her flat",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book8.photo.attach(io: URI.open("https://images2.medimops.eu/product/821e2a/M00140623515-large.jpg"), filename: "book8.jpg", content_type: 'image/jpg')
book8.save

book9 = Book.create(
  title:"Frankenstein",
  author: "Mary Shelley",
  category: "Best Sellers",
  description: "Victor Frankenstein tells Walton his story—a happy childhood, an unhealthy obsession with alchemy, and his engagement to his cousin Elizabeth. Victor enrolls at the University of Ingolstadt, where he discovers the secret of life and builds a creature from dead bodies",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book9.photo.attach(io: URI.open("https://images2.medimops.eu/product/2cb08c/M02010120329-large.jpg"), filename: "book9.jpg", content_type: 'image/jpg')
book9.save

book10 = Book.create(
  title: "The dog of Baskerville",
  author: "Arthur Conan Doyle",
  category: "Crimes",
  description: "Sherlock Holmes and Dr Watson investigate the legend of a supernatural hound, a beast that may be stalking a young heir on the fog-shrouded moorland that makes up his estate",
  delivery_price: rand(1..12),
  availability: true,
  user: users.sample
)
book10.photo.attach(io: URI.open("https://images2.medimops.eu/product/8ea50a/M0225300314X-large.jpg"), filename: "book10.jpg", content_type: 'image/jpg')
book10.save


puts 'finished !!'

# dragon = Ride.create(
#   name: 'Dragon Fire',
#   category: 'Magical Creatures',
#   description: 'Ride a scary dragon. If you like taking risks you can tickle Dragon Fire to make him spit fire.',
#   address: '12, rue Oberkampf 75011 Paris',
#   availability: true,
#   price_per_day: rand(50..100),
#   user: users.sample,
# )
# dragon.photo.attach(io: URI.open("https://m.media-amazon.com/images/I/61+FHcqEOYL.jpg"), filename: "rocket.png", content_type: 'image/png')
# dragon.save
