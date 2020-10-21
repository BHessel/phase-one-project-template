class CreatePowersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :powers do |t|
      t.string :name
    end 
  end
end
