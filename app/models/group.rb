class Group < ApplicationRecord
    has_many :memberships
    has_many :users, through: :memberships
    has_many :requests
    has_many :posts
    belongs_to :user
    belongs_to :game
end
