
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
           
            menu.choice "Show me a Superheroes powers", 1
            menu.choice "Show all comics a Superhero is in", 2
            menu.choice "All comics written by a given author", 3
            menu.choice "Show the author of a selected comic", 4
            menu.choice "Learn how many comics a Superhero is in", 5
            menu.choice "Exit the app to go fight evil!", 6
        end

        if menuchoice == 1
            select_superhero_show_powers
        elsif menuchoice == 2
            select_hero_show_comics
        elsif menuchoice == 3
            author_shows_comics
        elsif menuchoice == 4
            comic_show_author
        elsif menuchoice == 5
            superhero_comic_count
        else menuchoice == 6
            exit_app 
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
        
        shero = Superhero.pluck(:id, :name)
        super_hash = {}
        
        shero.each do |hero|
        # shero = [id, name], supe[0] == id, supe[1] == name
        super_hash[hero[1]] = hero[0]
        end

        #binding.pry
        prompt.select("Choose your hero:", super_hash)#, per_page: 10)
    end


    def author_list_helper
        prompt = TTY::Prompt.new
        prompt.select("Select an author", per_page: 10) do |menu|

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

            menu.choice Comic.find_by(id: 1)["title"], 1
            menu.choice Comic.find_by(id: 2)["title"], 2
            menu.choice Comic.find_by(id: 3)["title"], 3
            menu.choice Comic.find_by(id: 4)["title"], 4
            menu.choice Comic.find_by(id: 5)["title"], 5
            menu.choice Comic.find_by(id: 6)["title"], 6
            menu.choice Comic.find_by(id: 7)["title"], 7
            menu.choice "Return to Main Menu", 8
        end
    end


    def select_superhero_show_powers
        prompt = TTY::Prompt.new
        herochoice = character_list_helper

        if herochoice == 1
            #shows Wolverine's powers, returns to main menu after 5 sec
            Superhero.find_by(id: 1).show_powers 
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
    end



    def select_hero_show_comics
        prompt = TTY::Prompt.new
        herocomics = character_list_helper

        if herocomics == 1
            Superhero.find_by(id: 1).superhero_featured_in
            return_to_main
        elsif herocomics == 2
            Superhero.find_by(id: 2).superhero_featured_in
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
    end


    def author_shows_comics
        prompt = TTY::Prompt.new
        author = author_list_helper

        if author == 1
            Comic.all_comics_by_author(1)
            return_to_main
        elsif author == 2
            Comic.all_comics_by_author(2)
            return_to_main
        elsif author == 3
            Comic.all_comics_by_author(3)
            return_to_main
        elsif author == 4
            Comic.all_comics_by_author(4)
            return_to_main
        elsif author == 5
            Comic.all_comics_by_author(5)
            return_to_main
        elsif author == 6
            Comic.all_comics_by_author(6)
            return_to_main
        elsif author == 7
            Comic.all_comics_by_author(7)  
            return_to_main
        else author == 8
            main_menu
        end
    end


    def superhero_comic_count
        prompt = TTY::Prompt.new
        herocount = character_list_helper

        if herocount == 1
            Superhero.find_by(id: 1).comic_count
            return_to_main
        elsif herocount == 2
            Superhero.find_by(id: 2).comic_count
            return_to_main
        elsif herocount == 3
            Superhero.find_by(id: 3).comic_count
            return_to_main
        elsif herocount == 4
            Superhero.find_by(id: 4).comic_count
            return_to_main
        elsif herocount == 5
            Superhero.find_by(id: 5).comic_count
            return_to_main
        elsif herocount == 6
            Superhero.find_by(id: 6).comic_count
            return_to_main
        elsif herocount == 7
            Superhero.find_by(id: 7).comic_count
            return_to_main
        else herocount == 8
            main_menu
        end
        
    end


    def comic_show_author
        prompt = TTY::Prompt.new
        comicauthor = comic_list_helper

        if comicauthor == 1
            Comic.find_by(id: 2).find_author
            return_to_main
        elsif comicauthor == 2
            Comic.find_by(id: 2).find_author
            return_to_main
        elsif comicauthor == 3
            Comic.find_by(id: 3).find_author
            return_to_main
        elsif comicauthor == 4
            Comic.find_by(id: 4).find_author
            return_to_main
        elsif comicauthor == 5
            Comic.find_by(id: 5).find_author
            return_to_main
        elsif comicauthor == 6
            Comic.find_by(id: 6).find_author
            return_to_main
        elsif comicauthor == 7
            Comic.find_by(id: 7).find_author
            return_to_main
        else comicauthor == 8
            main_menu
        end
    end


    def exit_app  #for leaving the app
        puts "Thanks for keeping the world safe!"
        sleep(3)
        exit
    end
end
