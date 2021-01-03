class User < ApplicationRecord
    has_many :messages
    has_many :favorites
    has_many :favorite_rooms, :through => :favorites, :source => :room
    has_many :rooms, through: :messages

    has_secure_password
end
