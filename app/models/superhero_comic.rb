class SuperheroComic < ActiveRecord::Base
    belongs_to :superhero
    belongs_to :comic
end
