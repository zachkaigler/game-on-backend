class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :accepted, :read
end