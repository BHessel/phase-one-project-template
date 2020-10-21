class Comic < ActiveRecord::Base
    has_many :superhero_comics
    has_many :superheroes, through: :superhero_comics
end
