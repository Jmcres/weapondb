class User < ApplicationRecord
    has_many :user_weapons
    has_many :weapons, through: :user_weapons
end
