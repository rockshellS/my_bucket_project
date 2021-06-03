class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :user_id
      t.integer :adventure_id
      t.text :comments
      

      t.timestamps
    end
  end
end
