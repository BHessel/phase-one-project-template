require_relative "../../config/environment.rb" #may only need one ../ ?

class CLI

    def welcome
        #quick instructions on how app works
            #Welcome to Superhero/Marvel Lookup where you can
                #search for your favorite superheroes from our movies
                #and learn more about them, and the comics that brought
                #each character to life.
        #puts "What is your name?"
        #user gets.chomp
        #this is to reference while using the app, we don't care
            #to store it
    end

    def main_menu
        #puts "What would you like to look up first?"
        #puts "show me a superheroes powers"
            #goes to secondary list of superheroes
                #which returns the selected SH's powers
        #puts "show me all comics my favorite SH is in"
            #SH list
            #superhero_featured_in 
        #puts "all comics by superhero"
            #SH list
            #returns all of their comics
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
        #puts "Return to Main Menu"
    end


    def select_superhero
        #this is a list of all superheroes
        #Wolverine, Hulk, Captain America, Thor, Ironman, Spiderman, Black Panther
        #We don't want to hardcode the names in case more SH's get added to the API over time
            #How do we make a dynamic SH list, so that each SH's name appears on a new line
    end

    def comic_list
        #allows user to select from all comics
        #same thoughts on hardcoding
    end

    def author_list
        #shows all authors        
    end


    def exit
        #for leaving the app
        #leaves w/ nice comment/insider joke
    end


end
