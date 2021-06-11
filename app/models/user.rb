class User < ApplicationRecord
    has_many :memberships
    has_many :joined_groups, through: :memberships, source: :group
    has_many :owned_groups, class_name: "Group", foreign_key: "user_id"

    has_many :interests
    has_many :games, through: :interests

    has_many :convos_a, class_name: "Conversation", foreign_key: "user_a_id"
    has_many :user_bs, through: :convos_a, source: :user_b

    has_many :convos_b, class_name: "Conversation", foreign_key: "user_b_id"
    has_many :user_as, through: :convos_b, source: :user_a

    has_many :messages
    has_many :requests

    has_secure_password

end
