class UserListMovieSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :list_movie_id
end
