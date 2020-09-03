class Movie < ApplicationRecord
    has_many :movie_list_movies
    has_many :list_movies, through: :movie_list_movies
    has_many :users, through: :list_movies
end
