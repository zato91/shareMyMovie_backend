class User < ApplicationRecord
    has_many :friendships
    has_many :user_list_movies
    has_many :list_movies, through: :user_list_movies
    has_many :movies, through: :list_movies

    
    validates :username, presence: true
    validates :password, presence: true, uniqueness: true

    has_secure_password
end
