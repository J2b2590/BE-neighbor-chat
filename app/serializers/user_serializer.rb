class UserSerializer < ActiveModel::Serializer
    attributes :id, :username
    has_many :messages
    has_many :favorites
    

    # def user
    #   u = User.find(object.user_id)
    #   UserSerializer.new(u)
    # end
    
  end