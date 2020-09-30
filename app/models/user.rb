class User < ApplicationRecord
    has_many :friendships
    has_many :user_list_movies
    has_many :list_movies, through: :user_list_movies
    has_many :movies, through: :list_movies

    
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true


    has_many :followed_friendships, foreign_key: :friend_id, class_name: 'Friendship'
    has_many :followers, through: :followed_friendships

    has_many :initiated_follows, foreign_key: :user_id, class_name: 'Friendship'
    has_many :followees, through: :initiated_follows

    has_secure_password
end
