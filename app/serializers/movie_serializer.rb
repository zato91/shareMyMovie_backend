class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :rating, :description, :extra_info
end
