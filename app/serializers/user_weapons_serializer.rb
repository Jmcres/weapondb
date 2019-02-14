class UserWeaponsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :weapon_id 
  belongs_to :user
  belongs_to :weapon
end
