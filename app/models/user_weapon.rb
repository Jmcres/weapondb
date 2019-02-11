class UserWeapon < ApplicationRecord
    belongs_to :user
    belongs_to :weapon
end
