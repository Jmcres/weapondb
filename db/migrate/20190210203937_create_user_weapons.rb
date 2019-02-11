class CreateUserWeapons < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :weapons do |t|
      t.index [:user_id, :weapon_id]
      t.index [:weapon_id, :user_id]
    end
  end
end
