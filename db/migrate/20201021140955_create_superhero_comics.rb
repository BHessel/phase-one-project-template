class CreateSuperheroComics < ActiveRecord::Migration[5.2]
  def change
    create_table  :superhero_comics do |t|
      t.integer :comic_id
      t.integer :superhero_id
    end 
  end
end
