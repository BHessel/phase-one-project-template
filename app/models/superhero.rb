class Superhero < ActiveRecord::Base
    self.table_name = "superheroes"
    has_many :superhero_powers
    has_many :powers, through: :superhero_powers
    has_many :superhero_comics
    has_many :comics, through: :superhero_comics
    
    def superhero_featured_in
        #returns all comics the superhero is featured in
        self.comics.pluck(:title).join(", ")
    end
    
    def comic_count
        #counts how many comics a given superhero is mentioned in
        self.comics.count
    end

    
end
