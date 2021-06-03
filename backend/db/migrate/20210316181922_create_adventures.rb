class CreateAdventures < ActiveRecord::Migration[6.1]
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :image
      
      

      t.timestamps
    end
  end
end
