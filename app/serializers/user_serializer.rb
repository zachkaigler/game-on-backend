class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :email, :bio, :location, :profile_pic
  attribute :all_requests_to_my_groups, if: :condition
  attribute :all_conversations, if: :condition
  
  has_many :games
  has_many :owned_groups
  has_many :joined_groups
  has_many :requests

  def condition
    @instance_options[:flag] != "restrict"
  end
end
