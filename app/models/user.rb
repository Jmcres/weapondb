class User < ApplicationRecord
    # has_secure_password 
    has_many :user_weapons
    has_many :weapons, through: :user_weapons
end
