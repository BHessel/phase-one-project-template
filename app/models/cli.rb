
class CLI 
    
    def run 
        welcome
        main_menu
        
    end
    
    def welcome      #quick instructions on how app works
        puts "Welcome to Marvel Superhero Lookup!"
        sleep(1)
        puts "You can search for your favorite Marvel superheroes to learn more about them, and find the original comics that brought each character to life."
        sleep(2)
        puts "What is your name?"
        name = gets.chomp
        puts "Welcome to the Marvel Universe, #{name}!"
    end

    
    def main_menu
        prompt = TTY::Prompt.new
        menuchoice = prompt.select("What would you like to look up first?") do |menu|
            menu.default 5
            
            menu.choice "Show me a Superheroes powers", 1
            menu.choice "Show all comics a Superhero is in", 2
            menu.choice "All comics written by a given author", 3
            menu.choice "Show the author of a selected comic", 4
            menu.choice "Learn how many comics a Superhero is in", 5
        end

        if menuchoice == 1
            select_superhero_show_powers
        elsif menuchoice == 2
            select_hero_show_comics
        elsif menuchoice == 3
            author_shows_comics
        elsif menuchoice == 4
            comic_list_helper
        else menuchoice == 5
            comic_list
        end
    
        #puts "release date of comics"       
            #SH list (which SH's comics?)
            #shows comics and their release dates
    end


    def return_to_main
        sleep(5)
        main_menu
    end

    def character_list_helper
        prompt = TTY::Prompt.new
        prompt.select("Choose your hero", per_page: 10) do |menu|
            menu.default 8

            menu.choice Superhero.find_by(id: 1), 1
            menu.choice Superhero.find_by(id: 2), 2
            menu.choice Superhero.find_by(id: 3), 3
            menu.choice Superhero.find_by(id: 4), 4
            menu.choice Superhero.find_by(id: 5), 5
            menu.choice Superhero.find_by(id: 6), 6
            menu.choice Superhero.find_by(id: 7), 7
            menu.choice "Return to Main Menu", 8
        end
    end

    def author_list_helper
        prompt = TTY::Prompt.new
        prompt.select("Select an author", per_page: 10) do |menu|
            menu.default 8

            menu.choice Comic.find_by(id: 1)["author"], 1
            menu.choice Comic.find_by(id: 2)["author"], 2
            menu.choice Comic.find_by(id: 3)["author"], 3
            menu.choice Comic.find_by(id: 4)["author"], 4
            menu.choice Comic.find_by(id: 5)["author"], 5
            menu.choice Comic.find_by(id: 6)["author"], 6
            menu.choice Comic.find_by(id: 7)["author"], 7
            menu.choice "Return to Main Menu", 8
        end
    end

    def comic_list_helper
        #allows user to select from all comics
        prompt = TTY::Prompt.new
        prompt.select("Select a comic", per_page: 10) do |menu|
            menu.default 8

            menu.choice "The Incredible Hulk #180", 1
            menu.choice "The Winter Soldier", 2
            menu.choice "Tony Stark: Ironman", 3
            menu.choice "Journey into Mystery", 4
            menu.choice "Age of Apocalypse", 5
            menu.choice "The Amazing Spider-man", 6
            menu.choice "Avengers", 7
            menu.choice "Return to Main Menu", 8
        end

    end


    def select_superhero_show_powers
        prompt = TTY::Prompt.new
        herochoice = character_list_helper

        if herochoice == 1
            #shows Wolverine's powers, returns to main menu after 5 sec
            Superhero.find_by(id: 1).show_powers #this works in rake console, but now our list in the CL only shows objects not names
            return_to_main
        elsif herochoice == 2
            Superhero.find_by(id: 2).show_powers
            return_to_main
        elsif herochoice == 3
            Superhero.find_by(id: 3).show_powers
            return_to_main
        elsif herochoice == 4
            Superhero.find_by(id: 4).show_powers
            return_to_main
        elsif herochoice == 5
            Superhero.find_by(id: 5).show_powers
            return_to_main
        elsif herochoice == 6
            Superhero.find_by(id: 6).show_powers
            return_to_main
        elsif herochoice == 7
            Superhero.find_by(id: 7).show_powers
            return_to_main
        else herochoice == 8
            main_menu
        end
        #We don't want to hardcode the names in case more SH's get added to the API over time
            #How do we make a dynamic SH list, so that each SH's name appears on a new line
    end



    def select_hero_show_comics
        prompt = TTY::Prompt.new
        herocomics = character_list_helper

        if herocomics == 1
            Superhero.find_by(id: 1).superhero_featured_in
            return_to_main
        elsif herocomics == 2
            Comic.all_comics_by_author("Len Wein")
            return_to_main
        elsif herocomics == 3
            Superhero.find_by(id: 3).superhero_featured_in
            return_to_main
        elsif herocomics == 4
            Superhero.find_by(id: 4).superhero_featured_in
            return_to_main
        elsif herocomics == 5
            Superhero.find_by(id: 5).superhero_featured_in
            return_to_main
        elsif herocomics == 6
            Superhero.find_by(id: 6).superhero_featured_in
            return_to_main
        elsif herocomics == 7
            Superhero.find_by(id: 7).superhero_featured_in
            return_to_main
        else herocomics == 8
            main_menu
        end
        #We don't want to hardcode the names in case more SH's get added to the API over time
            #How do we make a dynamic SH list, so that each SH's name appears on a new line
    end


    def author_shows_comics
        prompt = TTY::Prompt.new
        author = author_list_helper

        if author == 1
            Comic.all_comics_by_author("Len Wein")
            return_to_main
        elsif author == 2
            Comic.all_comics_by_author("Ed Brubaker")
            return_to_main
        elsif author == 3
            Comic.all_comics_by_author("Dan Slott")
            return_to_main
        elsif author == 4
            Comic.all_comics_by_author("Stan Lee")
            return_to_main
        elsif author == 5
            Comic.all_comics_by_author("Scott Lobdell")
            return_to_main
        elsif author == 6
            Comic.all_comics_by_author("Ferreira Spencer")
            return_to_main
        elsif author == 7
            Comic.all_comics_by_author("Garron Aaron")  #we know this b/c of looking at the table, but 8 would be the same comic w/ Stan Lee as author, and then would repeat on this menu list which we don't want
            return_to_main
        else author == 8
            main_menu
        end
        #We don't want to hardcode the names in case more SH's get added to the API over time
            #How do we make a dynamic SH list, so that each SH's name appears on a new line
    end


    



    def exit
        #for leaving the app
        #leaves w/ nice comment/insider joke
    end


end
