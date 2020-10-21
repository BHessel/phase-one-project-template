class SuperheroPower < ActiveRecord::Base
    belongs_to :superhero
    belongs_to :power
end
