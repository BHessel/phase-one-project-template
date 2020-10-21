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
avengers = Comic.find_or_create_by(title: "Avengers", author: "Stan Lee") #Garron Aaron


strength = Power.find_or_create_by(name: "superhuman strength")
heal = Power.find_or_create_by(name: "enhanced healing")
fly = Power.find_or_create_by(name: "flight")
speed = Power.find_or_create_by(name:"speed and agility")
senses = Power.find_or_create_by(name: "spidy senses")

hulkpower1 = SuperheroPower.find_or_create_by(superhero_id: hulk.id, power_id: strength.id)
wolverinepower1 = SuperheroPower.find_or_create_by(superhero_id: wolverine.id, power_id: heal.id)
captainpower1 = SuperheroPower.find_or_create_by(superhero_id: captain.id, power_id: speed.id)
thorpower1 = SuperheroPower.find_or_create_by(superhero_id: thor.id, power_id: strength.id)
ironmanpower1 = SuperheroPower.find_or_create_by(superhero_id: ironman.id, power_id: fly.id)
spidermanpower1 = SuperheroPower.find_or_create_by(superhero_id: spiderman.id, power_id: senses.id)
pantherpower1 = SuperheroPower.find_or_create_by(superhero_id: panther.id, power_id: strength.id)
pantherpower2 = SuperheroPower.find_or_create_by(superhero_id: panther.id, power_id: speed.id)

hulkcomic = SuperheroComic.find_or_create_by(superhero_id: hulk.id, comic_id: incredible_hulk.id)
wolverinecomic1 = SuperheroComic.find_or_create_by(superhero_id: wolverine.id, comic_id: xmen.id)
wolverinecomic2 = SuperheroComic.find_or_create_by(superhero_id: wolverine.id, comic_id: incredible_hulk.id)
captaincomic = SuperheroComic.find_or_create_by(superhero_id: captain.id, comic_id: winter.id)
thorcomic = SuperheroComic.find_or_create_by(superhero_id: thor.id, comic_id: journey.id)
ironmancomic = SuperheroComic.find_or_create_by(superhero_id: ironman.id, comic_id: avengers.id)
spidermancomic = SuperheroComic.find_or_create_by(superhero_id: spiderman.id, comic_id: spider.id)
panthercomic = SuperheroComic.find_or_create_by(superhero_id: panther.id, comic_id: avengers.id)


binding.pry
0