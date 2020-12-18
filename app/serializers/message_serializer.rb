class MessageSerializer < ActiveModel::Serializer
    attributes :user_id, :room_id, :content
    belongs_to :user

    # def user
    #   object.user.collect do |user|
    #     { :user => user}
    #   end
    # end

    # def user
    #   u = User.find(object.user_id)
    #   UserSerializer.new(u)
    # end

    # def user
    #   object.user.collect do |user|
    #     { :user => user.user}
    #   end
    # end

  end