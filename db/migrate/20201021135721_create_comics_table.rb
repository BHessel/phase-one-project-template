class CreateComicsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :author
    end 
  end
end
