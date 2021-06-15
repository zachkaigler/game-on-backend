class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :read, :user_id, :conversation_id, :user_prof_pic, :user_username
end
