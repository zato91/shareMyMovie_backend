class UserListMovie < ApplicationRecord
    belongs_to :user
    belongs_to :list_movie
end
