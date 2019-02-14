class WeaponSerializer < ActiveModel::Serializer
  attributes :id, :weaponsystem, :name, :img_url ,:role ,:country ,:side ,:gun ,:ammo ,:speed ,:armor ,:range ,:crew ,:firepowergun ,:firepowerammo ,:speedscore ,:health ,:protection ,:rangescore , :user_weapons
  has_many :user_weapons
  has_many :users, through: :user_weapons
end
