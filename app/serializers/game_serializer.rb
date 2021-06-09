class GameSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :users
  has_many :groups
end
