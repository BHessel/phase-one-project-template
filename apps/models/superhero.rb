class Superhero < ActiveRecord::Base
    has_many :superhero_powers
    has_many :powers, through: :superhero_powers
    has_many :superhero_comics
    has_many :comics, through: :superhero_comics
    #is the order of this right?
end
