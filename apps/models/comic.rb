class Comic < ActiveRecord::Base
    has_many :superhero_comics
    has_many :superheroes, through: :superhero_comics
    #did we need an underscore? i.e. superhero_comics?
end
