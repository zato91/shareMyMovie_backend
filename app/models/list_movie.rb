class ListMovie < ApplicationRecord
    has_many :user_list_movies
    has_many :users, through: :user_list_movies
    has_many :movie_list_movies
    has_many :movies, through: :movie_list_movies
end
