class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :messages
  has_many :users

  def messages
    object.messages.collect do |message|
      {:user => message.user, :message => message}
    end
  end
  
end
