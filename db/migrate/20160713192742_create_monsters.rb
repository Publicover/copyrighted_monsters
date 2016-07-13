class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :rarity
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
