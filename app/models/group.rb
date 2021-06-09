class Group < ApplicationRecord
    has_many :memberships
    has_many :users, through: :memberships
    has_many :requests
    belongs_to :user
    belongs_to :game
end
