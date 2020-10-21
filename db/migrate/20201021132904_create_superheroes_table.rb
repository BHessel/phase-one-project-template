class CreateSuperheroesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :superheroes do |t|
      t.string :name
    end 
  end
end
