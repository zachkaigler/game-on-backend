class Conversation < ApplicationRecord
    belongs_to :user_a, class_name: "User"
    belongs_to :user_b, class_name: "User"
    has_many :messages
end
