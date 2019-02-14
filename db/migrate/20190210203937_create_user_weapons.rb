class CreateUserWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :user_weapons do |t|
      t.integer :user_id
      t.integer :weapon_id
    end
  end
end
