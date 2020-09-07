class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :list_movies
  has_many :movies, through: :list_movies
end
