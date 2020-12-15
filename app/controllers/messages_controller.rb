class MessagesController < ApplicationController

    def index
        messages = Message.all
        render json: messages
    end

    def create
        message = Message.new(message_params)
        if message.save
            RoomsChannel.broadcast_to(room,{
                room: Room.new(room),
                users: User.new(room.users),
                messages: Message.new(room.messages)
            })
        end
        render json: message
    end

    private

    def message_params
        params.require(:message).permit(:content, :user_id, :room_id)
    end
end
