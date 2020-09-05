class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :list_movies
end
