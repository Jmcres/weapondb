class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :username, :password, :weapons, :user_weapons
  has_many :user_weapons
  has_many :weapons, through: :user_weapons
end
