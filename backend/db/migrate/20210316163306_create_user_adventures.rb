class CreateUserAdventures < ActiveRecord::Migration[6.1]
  def change
    create_table :user_adventures do |t|
      t.string :user_id
      t.string :adventure_id
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
