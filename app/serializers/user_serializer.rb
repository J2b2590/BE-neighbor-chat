class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :favorite_rooms
    has_many :messages
    

    # def user
    #   u = User.find(object.user_id)
    #   UserSerializer.new(u)
    # end
    
  end