class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :user_a_id, :user_b_id
end
