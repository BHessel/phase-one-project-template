
class CLI
    
    def run 
        welcome
        main_menu
        
        # select_superhero
        # if #user selects
        #     #1 3 5
        #     superhero_list
        # elsif #user selects 2 or 4
        #     comic_list
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

    # def superhero_list2
    #     puts "Hello"
        
    # end
    
    def main_menu
        prompt = TTY::Prompt.new
        prompt.select("What would you like to look up first?") do |menu|
            menu.default 6
            
            menu.choice "Show me a Superheroes powers", 1
            menu.choice "Show all comics a Superhero is in", 2
            menu.choice "Let me see all comics with a chosen Superhero", 3
            menu.choice "All comics written by a given author", 4
            menu.choice "Show the author of a selected comic", 5
            menu.choice "Learn how many comics a Superhero is in", 6
        end
    

    

        #puts "What would you like to look up first?"
        #puts "show me a superheroes powers"
            #goes to secondary list of superheroes
                #which returns the selected SH's powers
        #puts "show me all comics my favorite SH is in"
            #SH list
            #superhero_featured_in 
        #puts "search for comics by author"
            #author list
            #returns all_comics_by_author
        #puts "show author of a comic"
            #comic list
            #returns its author
        #puts "number of comics a superhero is in"
            #SH list
            #shows total # of comics
        #puts "release date of comics"       
            #SH list (which SH's comics?)
            #shows comics and their release dates
    end


    def select_superhero
        prompt = TTY::Prompt.new
        #this is a list of all superheroes
        prompt.select("Choose your hero", per_page: 10) do |menu|
            menu.choice "Wolverine"
            menu.choice "Hulk"
            menu.choice "Captain America"
            menu.choice "Thor"
            menu.choice "Ironman"
            menu.choice "Spiderman"
            menu.choice "Black Panther"
            menu.choice "Return to Main Menu"
        end

        #We don't want to hardcode the names in case more SH's get added to the API over time
            #How do we make a dynamic SH list, so that each SH's name appears on a new line
    end

    def comic_list
        #allows user to select from all comics
        prompt = TTY::Prompt.new
        #this is a list of all superheroes
        prompt.select("Select a comic", per_page: 10) do |menu|
            menu.choice "The Incredible Hulk #180"
            menu.choice "The Winter Soldier"
            menu.choice "Tony Stark: Ironman"
            menu.choice "Journey into Mystery"
            menu.choice "Age of Apocalypse"
            menu.choice "The Amazing Spider-man"
            menu.choice "Avengers"
            menu.choice "Return to Main Menu"
        end

    end

    def author_list
        #shows all authors        
    end


    def exit
        #for leaving the app
        #leaves w/ nice comment/insider joke
    end


end
