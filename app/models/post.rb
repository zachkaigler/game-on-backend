class Post < ApplicationRecord
    belongs_to :user
    belongs_to :group

    def poster_pic
        self.user.profile_pic
    end

    def poster_username
        self.user.username
    end
end
