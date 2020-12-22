class User < ApplicationRecord
    has_many :messages
    has_many :rooms, through: :messages
    has_secure_password
end
