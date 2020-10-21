class CreateSuperheroPowersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :superhero_powers do |t|
      t.integer :superhero_id
      t.integer :power_id
    end 
  end
end
