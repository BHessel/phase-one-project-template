class Superhero < ActiveRecord::Base
    has_many :powers
    has_many :comics
end
