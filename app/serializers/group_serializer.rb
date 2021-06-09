class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name, :group_about, :group_location, :group_time, :open, :game_id, :user_id, :group_image

  belongs_to :game
  belongs_to :user
  has_many :users
end
