class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :list_movies
<<<<<<< HEAD
  has_many :movies, through: :list_movies
=======
>>>>>>> b8d45916cc7361a8e4828bded7c3b669c0ead6e9
end
