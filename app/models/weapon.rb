class Weapon < ApplicationRecord
  has_many :user_weapons
  has_many :users, through: :user_weapons
end
