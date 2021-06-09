class Game < ApplicationRecord
    has_many :interests
    has_many :users, through: :interests
    has_many :groups
end
