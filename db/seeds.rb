require 'pry'

wolverine = Superheroes.find_or_create_by(name: "Wolverine")
hulk = Superheroes.find_or_create_by(name: "Hulk")
captain = Superheroes.find_or_create_by(name: "Captain America")
thor = Superheroes.find_or_create_by(name: "Thor")
ironman = Superheroes.find_or_create_by(name: "Ironman")
spiderman = Superheros.find_or_create_by(name: "Spiderman")
panther= Superheros.find_or_create_by(name: "Black Panther")


incredible_hulk = Comics.find_or_create_by(title: "The Incredible Hulk #180", writer: "Len Wein") #wolverine's first appearance
winter = Comics.find_or_create_by(title: "The Winter Soldier", writer: "Ed Brubaker")
tony = Comics.find_or_create_by(title: "Tony Stark: Ironman", writer: "Dan Slott")
journey = Comics.find_or_create_by(title: "Journey into Mystery", writer: "Stan Lee")
xmen = Comics.find_or_create_by(title: "Age of Apocalypse", writer: "Scott Lobdell")
spider = Comics.find_or_create_by(title: "The Amazing Spider-man", writer: "Ferreira Spencer")
avengers = Comics.find_or_create_by(title: "Avengers", writer: "Garron Aaron")


strength = Power.find_or_create_by(name: "superhuman strength")
heal = Power.find_or_create_by(name: "enhanced healing")
fly = Power.find_or_create_by(name: "flight")
speed = Power.find_or_create_by(name:"speed and agility")
senses = Power.find_or_create_by(name: "spidy senses")




binding.pry
0