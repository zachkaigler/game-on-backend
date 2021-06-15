class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :conversation_id, :user_prof_pic, :user_username
end
