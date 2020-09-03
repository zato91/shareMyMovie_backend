class User < ApplicationRecord
    validates :username, presence: true
    validates :password, presence: true, uniqueness: true

    has_secure_password
end
