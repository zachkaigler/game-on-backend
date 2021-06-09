class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :email, :bio, :location, :profile_pic
  
  has_many :games
  has_many :owned_groups
  has_many :joined_groups
end
