class Power < ActiveRecord::Base
    has_many :superhero_powers
    has_many :superheroes, through: :superhero_powers
end
