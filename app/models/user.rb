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
    has_many :posts

    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }

    def all_requests_to_my_groups
        requests = []
        self.owned_groups.each do |group|
            group.requests.each do |request|
                data = {
                    request: request,
                    sender_name: User.find(request.user_id).username,
                    sender_pic: User.find(request.user_id).profile_pic,
                    group_name: group.group_name 
                }
                requests << data
            end
        end
        requests
    end

    def all_conversations
        all_convos = []

        self.convos_a.each do |convo|
            data = {
                convo: convo,
                user_a_pic: User.find(convo.user_a_id).profile_pic,
                user_a_username: User.find(convo.user_a_id).username,
                user_b_pic: User.find(convo.user_b_id).profile_pic,
                user_b_username: User.find(convo.user_b_id).username,
                unread_messages: convo.messages.where(read: false)
            }
            all_convos << data
        end

        self.convos_b.each do |convo|
            data = {
                convo: convo,
                user_a_pic: User.find(convo.user_a_id).profile_pic,
                user_a_username: User.find(convo.user_a_id).username,
                user_b_pic: User.find(convo.user_b_id).profile_pic,
                user_b_username: User.find(convo.user_b_id).username,
                unread_messages: convo.messages.where(read: false)
            }
            all_convos << data
        end

        all_convos
    end
end
