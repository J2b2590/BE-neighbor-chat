class FavoriteSerializer < ActiveModel::Serializer
  attributes :room, :user, :id
  belongs_to :user
  belongs_to :room
end
