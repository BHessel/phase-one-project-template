require 'pry'

wolverine = Superhero.find_or_create_by(name: "Wolverine")
hulk = Superhero.find_or_create_by(name: "Hulk")
captain = Superhero.find_or_create_by(name: "Captain America")
thor = Superhero.find_or_create_by(name: "Thor")
ironman = Superhero.find_or_create_by(name: "Ironman")
spiderman = Superhero.find_or_create_by(name: "Spiderman")
panther= Superhero.find_or_create_by(name: "Black Panther")


incredible_hulk = Comic.find_or_create_by(title: "The Incredible Hulk #180", author: "Len Wein") #wolverine's first appearance
winter = Comic.find_or_create_by(title: "The Winter Soldier", author: "Ed Brubaker")
tony = Comic.find_or_create_by(title: "Tony Stark: Ironman", author: "Dan Slott")
journey = Comic.find_or_create_by(title: "Journey into Mystery", author: "Stan Lee")
xmen = Comic.find_or_create_by(title: "Age of Apocalypse", author: "Scott Lobdell")
spider = Comic.find_or_create_by(title: "The Amazing Spider-man", author: "Ferreira Spencer")
avengers = Comic.find_or_create_by(title: "Avengers", author: "Garron Aaron")


strength = Power.find_or_create_by(name: "superhuman strength")
heal = Power.find_or_create_by(name: "enhanced healing")
fly = Power.find_or_create_by(name: "flight")
speed = Power.find_or_create_by(name:"speed and agility")
senses = Power.find_or_create_by(name: "spidy senses")




binding.pry
0