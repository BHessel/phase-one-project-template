class Comic < ActiveRecord::Base
    has_many :superhero_comics
    has_many :superheroes, through: :superhero_comics

    def release_date
        #returns year a comic was written
    end

    def find_author
        #returns author of given comic
        self.author 
    end
    
    def self.all_comics_by_author(author)
        #returns all comics by a given author
        self.all.where(author: author).pluck(:title).join(", ")
    end
    

end

