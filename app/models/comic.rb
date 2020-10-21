class Comic < ActiveRecord::Base
    has_many :superhero_comics
    has_many :superheroes, through: :superhero_comics

    def comics_with_multiple_heroes
    #returns comics that include multiple heroes taken as arguements
    end

    def find_author
        #returns author of given comic
        self.author 
        #binding.pry
    end

    def all_comics_by_author(author)
        #returns all comics by a given author
        Comic.where(author: author).pluck(:title).join(", ")
        binding.pry
    end





end
