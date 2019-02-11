class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :weaponsystem
      t.string :name
      t.string :img_url
      t.string :role
      t.string :country
      t.string :side
      t.string :gun
      t.string :ammo
      t.string :speed
      t.string :armor
      t.string :range
      t.string :crew
      t.integer :firepowergun
      t.integer :firepowerammo
      t.integer :speedscore
      t.integer :health
      t.integer :protection
      t.integer :rangescore
  
      t.timestamps
    end
  end
end
