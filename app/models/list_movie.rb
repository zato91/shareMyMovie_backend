class ListMovie < ApplicationRecord
    has_many :user_list_movies
    has_many :users, through: :user_list_movies
    has_many :movies

    validates :category, presence: true

    
end
