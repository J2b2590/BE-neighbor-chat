class FavoriteSerializer < ActiveModel::Serializer
  attributes :room, :user
  belongs_to :user
  belongs_to :room
end
