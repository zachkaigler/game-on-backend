class RequestSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :accepted, :read

  belongs_to :group
  belongs_to :user
end
