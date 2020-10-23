
class CLI 
    $prompt = TTY::Prompt.new

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
        menuchoice = $prompt.select("What would you like to look up first?") do |menu|
           
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
 
    end

    def return_to_main
        sleep(5)
        main_menu
    end

    def character_list_helper
        shero = Superhero.pluck(:id, :name)
        super_hash = {}
        
        shero.each do |hero|
        # shero = [id, name], supe[0] == id, supe[1] == name
        super_hash[hero[1]] = hero[0]
        end

        $prompt.select("Choose your hero:", super_hash, per_page: 10)
    end


    def comic_list_helper    #allows user to select from all comics
        comic_list = Comic.pluck(:id, :title)
        comic_hash = {}

        comic_list.each do |comic|
            comic_hash[comic[1]] = comic[0]
        end

        $prompt.select("Select an comic:", comic_hash, per_page: 10) 
    end


    def select_superhero_show_powers
        herochoice = character_list_helper

        if herochoice == 1
            #shows Wolverine's powers, returns to main menu after 5 sec
            puts Superhero.find_by(id: 1).show_powers 
            return_to_main
        elsif herochoice == 2
            puts Superhero.find_by(id: 2).show_powers
            return_to_main
        elsif herochoice == 3
            puts Superhero.find_by(id: 3).show_powers
            return_to_main
        elsif herochoice == 4
            puts Superhero.find_by(id: 4).show_powers
            return_to_main
        elsif herochoice == 5
            puts Superhero.find_by(id: 5).show_powers
            return_to_main
        elsif herochoice == 6
            puts Superhero.find_by(id: 6).show_powers
            return_to_main
        elsif herochoice == 7
            puts Superhero.find_by(id: 7).show_powers
            return_to_main
        else herochoice == 8
            main_menu
        end
    end



    def select_hero_show_comics
        herocomics = character_list_helper

        if herocomics == 1
            puts Superhero.find_by(id: 1).superhero_featured_in
            return_to_main
        elsif herocomics == 2
            puts Superhero.find_by(id: 2).superhero_featured_in
            return_to_main
        elsif herocomics == 3
            puts Superhero.find_by(id: 3).superhero_featured_in
            return_to_main
        elsif herocomics == 4
            puts Superhero.find_by(id: 4).superhero_featured_in
            return_to_main
        elsif herocomics == 5
            puts Superhero.find_by(id: 5).superhero_featured_in
            return_to_main
        elsif herocomics == 6
            puts Superhero.find_by(id: 6).superhero_featured_in
            return_to_main
        elsif herocomics == 7
            puts Superhero.find_by(id: 7).superhero_featured_in
            return_to_main
        else herocomics == 8
            main_menu
        end
    end


    def author_shows_comics
        author = Comic.group(:author).pluck(:author)
        @selected_auth = $prompt.select("Select an author:", author, per_page: 7) 
        all_commics = Comic.all_comics_by_author(@selected_auth)
        puts all_commics
        return_to_main
    end



    def superhero_comic_count
        herocount = character_list_helper

        if herocount == 1
            puts Superhero.find_by(id: 1).comic_count
            return_to_main
        elsif herocount == 2
            puts Superhero.find_by(id: 2).comic_count
            return_to_main
        elsif herocount == 3
            puts Superhero.find_by(id: 3).comic_count
            return_to_main
        elsif herocount == 4
            puts Superhero.find_by(id: 4).comic_count
            return_to_main
        elsif herocount == 5
            puts Superhero.find_by(id: 5).comic_count
            return_to_main
        elsif herocount == 6
            puts Superhero.find_by(id: 6).comic_count
            return_to_main
        elsif herocount == 7
            puts Superhero.find_by(id: 7).comic_count
            return_to_main
        else herocount == 8
            main_menu
        end
        
    end


    def comic_show_author
        comicauthor = comic_list_helper

        if comicauthor == 1
            puts Comic.find_by(id: 1).find_author
            return_to_main
        elsif comicauthor == 2
            puts Comic.find_by(id: 2).find_author
            return_to_main
        elsif comicauthor == 3
            puts Comic.find_by(id: 3).find_author
            return_to_main
        elsif comicauthor == 4
            puts Comic.find_by(id: 4).find_author
            return_to_main
        elsif comicauthor == 5
            puts Comic.find_by(id: 5).find_author
            return_to_main
        elsif comicauthor == 6
            puts Comic.find_by(id: 6).find_author
            return_to_main
        elsif comicauthor == 7
            puts Comic.find_by(id: 7).find_author
            return_to_main
        else comicauthor == 8
            main_menu
        end
    end


    def exit_app  #for leaving the app
        $prompt.say("Thanks for keeping the world safe!", color: :red)
        sleep(3)
        exit
    end
end
