class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :mood, :date, :group_id, :user_id, :poster_pic, :poster_username
end
